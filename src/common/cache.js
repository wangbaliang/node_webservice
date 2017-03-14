'use strict';

import config from 'config';
import { redisCacheFactory } from './redis';

const db = config.get('redis_cache.db');

const DEFAULT_TTL = config.get('redis_cache.default_ttl');
const CACHE_KEY_PREFIX = config.get('redis_cache.key_prefix');

const redis = redisCacheFactory.createClient(db);

class Cache {
  constructor() {
    this._keyPrefix = CACHE_KEY_PREFIX;
  }

  _getKey(key) {
    return this._keyPrefix + key;
  }

  async get(key) {
    const content = await redis.execute('get', this._getKey(key));
    if (!content) {
      return null;
    }
    return JSON.parse(content);
  }

  async set(key, val, ttl=null) {
    if (val === undefined || val === null) {
      return false;
    }
    if (ttl === null) {
      ttl = DEFAULT_TTL;
    }
    return await redis.execute(
      'set', this._getKey(key), JSON.stringify(val), 'EX', ttl);
  }
}

const webCache = new Cache();

export { webCache };
