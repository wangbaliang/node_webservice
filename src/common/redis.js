'use strict';

import config from 'config';

import { RedisClientFactory } from '../lib/redis_helper';

const redisFactory = new RedisClientFactory(
  config.get('redis.app'), config.get('redis.pool_settings.app'));

const redisCacheFactory = new RedisClientFactory(
  config.get('redis.cache'), config.get('redis.pool_settings.cache'));

export { redisFactory, redisCacheFactory };
