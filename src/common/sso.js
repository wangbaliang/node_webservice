'use strict';

import { log } from '../lib/log_helper';
import { ssoServiceClientFactory, } from './sso_service';

class SsoClient {
  _createServiceClient() {
    return ssoServiceClientFactory.createClient();
  }

  getAuthCodeParameterKey() {
    return '_sso_auth_code';
  }

  async checkAuthCode(code) {
    const client = this._createServiceClient();
    try {
      return await client.invoke('get_token', code);
    } catch (err) {
      if (err.name === 'InvalidCodeError') {
        log.warn(`code: ${code} is not valid`);
      } else {
        log.error(err);
      }
      return null;
    }
  }

  async checkAndFreshToken(token) {
    const client = this._createServiceClient();
    try {
      return await client.invoke('check_and_refresh_token', token);
    } catch (err) {
      if (err.name === 'InvalidTokenError') {
        log.warn(`token: ${token} is not valid`);
        return -2;
      } else {
        log.error(err);
      }
      return -1;
    }
  }
}

export {
  SsoClient
};
