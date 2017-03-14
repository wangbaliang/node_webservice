'use strict';

import config from 'config';
import { redisFactory } from './redis';

const key_prefix = config.get('auto_increment_id.key_prefix');
const db = config.get('auto_increment_id.db');
const redis = redisFactory.createClient(db);

class AutoIncIdManager {

  constructor(name) {
    this._key = key_prefix + name;
  }

  async createId() {
    return await redis.execute('incr', this._key);
  }

  async getLastId() {
    const value = await redis.execute('get', this._key);
    if (!value) {
      return 0;
    }
    return parseInt(value, 10);
  }
}

export { AutoIncIdManager };
