'use strict';

function _setCacheControl(ctx, cacheControlContent) {
  if (!ctx.state.cacheControlSetted) {
    ctx.set('Cache-Control', cacheControlContent);
    ctx.state.cacheControlSetted = true;
  }
}

function noCache() {
  return async (ctx, next) => {
    await next();
    _setCacheControl(ctx, 'no-cache, no-store');
  };
}

function privateCache(maxAge) {
  return async (ctx, next) => {
    await next();
    _setCacheControl(ctx, 'private, max-age=' + maxAge);
  };
}

function publicCache(maxAge) {
  return async (ctx, next) => {
    await next();
    _setCacheControl(ctx, 'public, max-age=' + maxAge);
  };
}

export { noCache, privateCache, publicCache };
