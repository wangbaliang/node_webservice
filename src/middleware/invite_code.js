'use strict';

import { getDebug } from '../lib/debug_helper';

const debug = getDebug('invite_code');

const COOKIE_MAX_MILLISECONDS = 1800 * 1000;

export function inviteCode(isPage=true) {
  return async (ctx, next) => {
    const cookieName = 'et:invitecode';
    let code = ctx.cookies.get(cookieName, { signed: true });
    debug('old code: ' + code);
    let isNew = false;
    if (isPage && !code) {
      code = ctx.query.ivc;
      debug('new code: ' + code);
      isNew = Boolean(code);
    }
    ctx.state.inviteCode = code || '';
    await next();
    if (isPage && isNew) {
      ctx.cookies.set(cookieName, code, { maxAge: COOKIE_MAX_MILLISECONDS, signed: true });
    }
  };
}
