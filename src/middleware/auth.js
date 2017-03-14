'use strict';

import config from 'config';
import { noRights } from '../lib/api_helper';
import { getUuid } from '../lib/uuid_helper';
import { log } from '../lib/log_helper';
import { getDebug } from '../lib/debug_helper';
import { redisFactory } from '../common/redis';

const debug = getDebug('middleware/auth');

async function _needLogon(ctx, next) {
  if (!isLogon(ctx)) {
    return noRights('您尚未登录');
  }
  return await next();
}

function _setViewGlobal(ctx, name, value) {
  ctx.state[name] = value;
}

async function _viewUserLogonStatus(ctx, next) {
  _setViewGlobal(ctx, 'gUserName', ctx.session.userName);
  return await next();
}

async function _autoLogon(ctx, next) {
  if (!isLogon(ctx)) {
    const rememberLogon = new _RememberLogon(ctx);
    const userName = await rememberLogon.load();
    debug('auto logon', userName);
    if (userName) {
      await setLogon(ctx, userName, false);
    }
  } else {
    _setViewGlobal(ctx, 'gUserName', ctx.session.userName);
  }
  return await next();
}

async function _pageNeedLogon(ctx, next) {
  if (!isLogon(ctx)) {
    ctx.redirect('/login');
    return;
  }
  return await next();
}

async function setLogon(ctx, userName, remember=false) {
  ctx.session.userName = userName;
  _setViewGlobal(ctx, 'gUserName', userName);
  if (remember) {
    try {
      const rememberLogon = new _RememberLogon(ctx);
      await rememberLogon.store();
    }
    catch (err) {
      log.error(err);
    }
  }
}

async function setLogout(ctx) {
  ctx.session.userName = null;
  try {
    const rememberLogon = new _RememberLogon(ctx);
    await rememberLogon.clean();
  }
  catch (err) {
    log.error(err);
  }
}

function isLogon(ctx) {
  debug('is logon', ctx.session);
  return Boolean(ctx.session.userName);
}

function getCurrentUserName(ctx) {
  return ctx.session.userName;
}

function needLogon(isPage=false) {
  return isPage ? _pageNeedLogon : _needLogon;
}

function autoLogon() {
  return _autoLogon;
}

function setUserLogonStatusOnView() {
  return _viewUserLogonStatus;
}

const REMEMBER_KEY_PREFIX = config.get('remember_logon.key_prefix');
const db = config.get('remember_logon.db');
const EXPIRE_SECONDS = config.get('remember_logon.expire_days') * 24 * 3600;
const COOKIE_KEY = config.get('remember_logon.cookie_key');

const redis = redisFactory.createClient(db);

class _RememberLogon {

  constructor(ctx) {
    this._ctx = ctx;
    this._key_prefix = REMEMBER_KEY_PREFIX;
  }

  _get_key(userName) {
    return this._key_prefix + userName;
  }

  async _set_val(val) {
    const userName = this._ctx.session.userName;
    return await redis.execute(
      'set', this._get_key(userName), JSON.stringify(val), 'EX', EXPIRE_SECONDS);
  }

  async _load_val(userName) {
    const content = await redis.execute('get', this._get_key(userName));
    if (!content) {
      return null;
    }
    return JSON.parse(content);
  }

  async _clean_val(userName) {
    await redis.execute('del', this._get_key(userName));
  }

  _set_cookie(val) {
    const data = JSON.stringify([val.userName, val.token]);
    this._ctx.cookies.set(
      COOKIE_KEY, data, { signed: true, maxAge: EXPIRE_SECONDS * 1000 });
  }

  _del_cookie() {
    this._ctx.cookies.set(COOKIE_KEY, null, { expires: new Date('1983') });
  }

  _load_cookie() {
    const data = this._ctx.cookies.get(COOKIE_KEY, { signed: true });
    debug('_load_cookie', data);
    if (!data) {
      return null;
    }
    try {
      return JSON.parse(data);
    }
    catch (err) {
      log.error(err);
      return null;
    }
  }

  async store() {
    const ctx = this._ctx;
    const userName = ctx.session.userName;
    if (!userName) {
      return false;
    }
    const data = {
      userName: userName,
      ip: ctx.ip,
      token: getUuid()
    };
    await this._set_val(data);
    this._set_cookie(data);
    return true;
  }

  async load() {
    const data = this._load_cookie();
    debug('load', data);
    if (!data) {
      return null;
    }
    const [userName, token] = data;
    const val = await this._load_val(userName);
    debug('token val', val);
    if (!val) {
      return null;
    }
    if (val.userName === userName && val.token === token
      && val.ip === this._ctx.ip) {
      return userName;
    }
    return null;
  }

  async clean() {
    const data = this._load_cookie();
    if (!data) {
      return true;
    }
    const [userName, ] = data;
    await this._clean_val(userName);
    this._del_cookie();
    return true;
  }
}

export {
  setLogon,
  setLogout,
  isLogon,
  needLogon,
  autoLogon,
  getCurrentUserName,
  setUserLogonStatusOnView,
};
