'use strict';

import config from 'config';
import debug from 'debug';

export function getDebug(namespace) {
  let prefix = config.get('debug.prefix');
  return debug(prefix + namespace);
}

export function isDevelop() {
  return Boolean(process.env['ET_DEV']);
}
