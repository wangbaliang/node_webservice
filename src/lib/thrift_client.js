'use strict';

import bb from 'bluebird';
import thrift from 'thrift';

import { log } from '../lib/log_helper';
import { getDebug } from '../lib/debug_helper';

const debug = getDebug('thrift_client');


class ThriftClientFactory {

  constructor(serverConfig, serviceCls, serviceName, clientWrapper=null) {
    this._serverConfig = serverConfig;
    this._serviceCls = serviceCls;
    this._serviceName = serviceName;
    this._wrapper = clientWrapper;
  }

  createClient() {
    let client = new ThriftClient(this._serverConfig, this._serviceCls,
      this._serviceName);
    if (this._wrapper) {
      client = this._wrapper(client);
    }
    return client;
  }
}


class ThriftClient {

  constructor(serverConfig, serviceCls, serviceName) {
    this._serverConfig = serverConfig;
    this._serviceCls = serviceCls;
    this._serviceName = serviceName;
    this._connection = null;
  }

  _createConnection() {
    return new Promise((resolve, reject) => {
      const connection = thrift.createConnection(
        this._serverConfig.host,
        this._serverConfig.port,
        {
          transport: thrift.TBufferedTransport(),
          protocol: thrift.TBinaryProtocol(),
        }
      );
      connection.on('close', () => {
        this.end();
        debug('thrift connection close');
      });
      connection.on('error', (err) => {
        this.end();
        log.error(err);
        reject(err);
      });
      connection.on('connect', () => {
        resolve(connection);
        debug('thrift connection connect');
      });
    });
  }

  async _initConnection() {
    if (!this._connection) {
      this._connection = await this._createConnection();
    }
    return Promise.resolve(this._connection);
  }

  end() {
    if (this._connection) {
      this._connection.end();
      this._connection = null;
    }
  }

  async _createClient() {
    const connection = await this._initConnection();

    if (this._serviceName) {
      return (new thrift.Multiplexer())
        .createClient(this._serviceName, this._serviceCls, connection);
    } else {
      return thrift.createClient(this._serviceCls, connection);
    }
  }

  async invoke(...args) {
    try {
      return await this.play(...args);
    } finally {
      this.end();
    }
  }

  async play(...args) {
    const methodName = args[0];
    const client = await this._createClient();
    const asyncMethod = bb.promisify(client[methodName], {context: client});
    return await asyncMethod.apply(client, args.slice(1));
  }
}


export { ThriftClientFactory };
