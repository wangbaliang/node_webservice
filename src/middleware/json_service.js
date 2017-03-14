'use strict';

export function jsonService() {
  return async (ctx, next) => {
    try {
      const result = await next();
      ctx.response.body = typeof(result) === 'string' ? result : JSON.stringify(result);
    }
    catch (err) {
      if (!err.isUserThrow) {
        throw err;
      }
      const errorInfo = {
        code: err.code,
        message: err.message,
        error: err.error,
      };
      ctx.response.body = JSON.stringify(errorInfo);
      ctx.response.status = err.status || 422;
    }
    ctx.response.type = 'json';
  };
}
