'use strict';

import { getDebug } from '../lib/debug_helper';

const debug = getDebug('thrift_service');

async function serviceCall(thisArg, fn, ...args) {

  try {
    let result = await fn.call(thisArg, ...args);
    return [0, result];
  }
  catch (err) {
    debug(err);
    if (err.name === 'ReturnFalse') {
      return [err.returnCode, null];
    } else {
      return [-1, null];
    }
  }
}

class _ThriftClient {

  constructor(client) {
    this._client = client;
  }

  end() {
    return this._client.end();
  }

  async invoke(...args) {
    return await serviceCall(this._client, this._client.invoke, ...args);
  }

  async play(...args) {
    return await serviceCall(this._client, this._client.play, ...args);
  }
}

function thriftClientWrapper(client) {
  return new _ThriftClient(client);
}


export { thriftClientWrapper };
