'use strict';

import 'babel-polyfill';

import config from 'config';
import Koa from 'koa';
import xmlBodyParser from 'koa-xml-body';
import bodyParser from 'koa-bodyparser';
import log4js from 'koa-log4';
import Router from 'koa-router';
import serveStatic from 'koa-static';
import convert from 'koa-convert';
import RedisStore from 'koa-redis';

import { log } from './lib/log_helper';
import { session } from './middleware/session';
import { responseTime } from './middleware/response_time';
import { autoLogon } from './middleware/auth';

import { view } from './view';
import { router as page_router } from './router/page';
import { router as api_router } from './router/api';


const router = new Router();
router.use('/api', api_router.routes());
router.use('', page_router.routes());

const app = new Koa();

app.proxy = true;
app.keys = config.get('app_settings.app_keys');

app.use(responseTime());

const DEFAULT_HTTP_LOG_FORMAT = ':remote-addr - - ' +
  '":method :url HTTP/:http-version" ' +
  ':status :content-length ":referrer" ":user-agent" :response-time';
app.use(log4js.koaLogger(log4js.getLogger('http'), {
  level: 'auto',
  format: DEFAULT_HTTP_LOG_FORMAT,
}));

app.use(convert(serveStatic('public')));
app.use(convert(xmlBodyParser({xmlOptions: {explicitArray: false}})));
app.use(bodyParser());
app.use(view);

app.use(session({
  key: 'et:sess',
  store: RedisStore(config.get('redis.session')),
  maxAge: config.get('app_settings.session_max_age_minute') * 60000,
}));

app.use(autoLogon());
app.use(router.routes());

process.on('uncaughtException', (err) => {
  log.error(`Caught exception: ${err}`, err);
});

export { app };
