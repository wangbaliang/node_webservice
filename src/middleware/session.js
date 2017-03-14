'use strict';

import _ from 'lodash';
import co from 'co';
import deepEqual from 'deep-equal';
import { getUuid } from '../lib/uuid_helper';


class Store {
  constructor(store) {
    this.store = store;
  }

  get(sid) {
    return co(this.store.get(sid));
  }

  set(sid, val, ttl) {
    return co(this.store.set(sid, val, ttl));
  }

  destroy(sid) {
    return co(this.store.destroy(sid));
  }
}

const ONE_DAY = 24 * 3600 * 1000; // one day in milliseconds

const cookieOpt = (cookie) => {
  const options = Object.assign({
    maxAge: 0, // default to use session cookie
    path: '/',
    secure: false,
    httpOnly: true,
  }, cookie || {}, {
    overwrite: true, // overwrite previous session cookie changes
    signed: false, // disable signed option
  });
  if (!(options.maxAge >= 0)) {
    options.maxAge = 0;
  }
  return options;
};

const deleteSession = (ctx, key, cookie, store, sid) => {
  const options = cookie instanceof Function ? cookieOpt(cookie(ctx)) : Object.assign({}, cookie);
  delete options.maxAge;
  ctx.cookies.set(key, null, options);
  store.destroy(`${key}:${sid}`);
};

const saveSession = (ctx, key, cookie, store, maxAge, sid) => {
  const options = cookie instanceof Function ? cookieOpt(cookie(ctx)) : cookie;
  const ttl = maxAge;
  ctx.cookies.set(key, sid, options);
  store.set(`${key}:${sid}`, ctx.session, ttl);
};

export function session(options) {
  const opt = options || {};
  const key = opt.key || 'koa:sess';
  const store = new Store(opt.store);
  const maxAge = opt.maxAge || ONE_DAY;
  const cookie = opt.cookie instanceof Function ? opt.cookie : cookieOpt(opt.cookie);

  return async (ctx, next) => {
    // initialize session id and data
    const cookieSid = ctx.cookies.get(key);

    let sid = cookieSid;
    if (!sid) {
      sid = getUuid();
      ctx.session = {};
    } else {
      ctx.session = await store.get(`${key}:${sid}`);
      if (!ctx.session || typeof ctx.session !== 'object') {
        ctx.session = {};
      }
    }

    const sessionClone = _.cloneDeep(ctx.session);

    // expose session handler to ctx
    ctx.sessionHandler = {
      regenerateId: () => {
        sid = getUuid();
      },
    };

    await next();

    const sessionHasData = ctx.session && Object.keys(ctx.session).length > 0;

    if (sid !== cookieSid) { // a new session id
      // delete old session
      if (cookieSid) {
        deleteSession(ctx, key, cookie, store, cookieSid);
      }
    } else { // an existing session
      if (!sessionHasData){
        deleteSession(ctx, key, cookie, store, sid);
        return;
      }
      // session data has not been changed
      if (deepEqual(ctx.session, sessionClone)) {
        return;
      }
    }
    if (sessionHasData) {
      saveSession(ctx, key, cookie, store, maxAge, sid);
    }
  };
}
