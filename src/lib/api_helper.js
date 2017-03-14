'use strict';

import joi from 'joi';
import _ from 'lodash';

export const statusCode = {
  OK: 200,
  UNAUTHORIZED: 401,
  FORBIDDEN: 403,
  NOT_FOUND: 404,
  FAILED: 417,
  INPUT_NOT_VALID: 422,
  SERVICE_UNAVAILABLE: 503,
};

export function fail(message, errorInfo = null, status = statusCode.FAILED) {
  let error = new Error(message);
  error.error = errorInfo;
  error.status = status;
  error.isUserThrow = true;
  throw error;
}

export function authFail(message, errorInfo) {
  return fail(message, errorInfo, statusCode.UNAUTHORIZED);
}

export function inputNotValid(message, errorInfo) {
  return fail(message, errorInfo, statusCode.INPUT_NOT_VALID);
}

export function noRights(message, errorInfo) {
  return fail(message, errorInfo, statusCode.FORBIDDEN);
}

export function validate(input, schema, options) {
  const result = joi.validate(input, schema, options);
  if (result.error) {
    return inputNotValid(result.error.details[0].message, result.error);
  }
  return result.value;
}

export function processData(code, data, fields = null, func = null) {
  switch (code) {
    case 0:
      if (func) {
        data = _.remove(data, func)
      }
      if (fields) {
        data = _.map(data, (item) => {
          return _.pick(item, fields);
        });
      }
      return data;
    default:
      return fail('操作失败，请您重试');
  }
}
