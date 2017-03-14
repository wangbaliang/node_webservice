'use strict';

import _ from 'lodash';
import bb from 'bluebird';
import pool from 'generic-pool';
import redis from 'redis';

bb.promisifyAll(redis.RedisClient.prototype);


function createPool(redisOption, poolOption) {

  const factory = {
    create: () => {
      return new Promise((resolve, reject) => {
        const client = redis.createClient(redisOption);

        client.on('error', (err) => {
          reject(err);
        });

        client.on('connect', () => {
          resolve(client);
        });
      });

    },
    destroy: (client) => {
      return client.quitAsync();
    },
  };


  if (!poolOption) {
    poolOption = {};
  }

  const poolConfig = {
    max: poolOption.max || 10,
    min: poolOption.min || 2,
    idleTimeoutMillis: poolOption.idleTimeoutMillis || 30000,
  };

  return pool.createPool(factory, poolConfig);
}


class RedisClient {

  constructor(pool, db) {
    this._pool = pool;
    this._db = db;
  }

  async _invoke(db, cmd, parameters) {
    const redis = await this._pool.acquire();
    try {
      await redis.selectAsync(this._db);
      if (_.isFunction(cmd)) {
        return await cmd.call(parameters, redis);
      }
      return await redis[cmd + 'Async'].apply(redis, parameters);
    }
    finally {
      await this._pool.release(redis);
    }
  }

  async execute(...args) {
    return await this._invoke(this._db, args[0], args.slice(1));
  }

  async invoke(thisArg, fn) {
    return await this._invoke(this._db, fn, thisArg);
  }
}


class RedisClientFactory {

  constructor(redisOption, poolOption) {
    this._pool = createPool(redisOption, poolOption);
  }

  createClient(db) {
    return new RedisClient(this._pool, db);
  }
}

export {
  RedisClientFactory,
};
