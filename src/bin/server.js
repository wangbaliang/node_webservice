'use strict';

import config from 'config';
import { getDebug, isDevelop } from '../lib/debug_helper';
import { log } from '../lib/log_helper';

import { app } from '../app';

const debug = getDebug('server');

if (isDevelop()) {
  log.warn('now is dev model, do not use in product env');
}

debug('before start');
const port = process.env['PORT'] || config.get('server.port');
debug('port: ' + port);
const host = process.env['HOST'] || config.get('server.host');
debug('port: ' + host);
debug('start');
app.listen(port, host);
debug('after start');
