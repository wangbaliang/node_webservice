'use strict';

export function responseTime() {
  return async (ctx, next) => {
    const start = process.hrtime();
    await next();
    const diff = process.hrtime(start);
    const delta = diff[0] * 1e3 + diff[1] / 1e6;
    ctx.set('X-Response-Time', delta + 'ms');
  };
}
