'use strict';

import { fail } from '../lib/api_helper';

function _defaultErrorHandler(code) {
  if (code < 0) {
    return fail('操作失败，请您重试。');
  }
  if (code > 0) {
    return fail('操作有误，请您重试。');
  }
}

function handleServiceResult(serviceResult, errorHandler) {
  const [code, data] = serviceResult;
  if (code === 0) {
    return data;
  }
  if (errorHandler) {
    return errorHandler(code);
  }
  return _defaultErrorHandler(code);
}

export { handleServiceResult };
