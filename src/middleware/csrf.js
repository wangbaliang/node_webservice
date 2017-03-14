'use strict';

import { getUuid } from '../lib/uuid_helper';
import { getDebug, isDevelop } from '../lib/debug_helper';

const debug = getDebug('csrf');

function genToken(ctx) {
  const token = getUuid();
  ctx.cookies.set('_csrf_token', token, { httpOnly: false, signed: false });
  ctx.session.csrf = token;
  debug(`new token: ${token}`);
}

async function _doNothing(ctx, next) {
  await next();
}

export function csrf() {
  return async (ctx, next) => {
    await next();
    genToken(ctx);
  };
}

export function csrfWithCheck() {
  if (isDevelop()) {
    return _doNothing;
  }
  return async (ctx, next) => {
    const token = ctx.header['x-csrf-token'];
    debug(`send token: ${token}`);
    if (!token || !ctx.session || ctx.session.csrf !== token ) {
      ctx.throw('csrf token not valid', 400);
      return;
    }
    await next();
    // genToken(ctx);
  };
}
