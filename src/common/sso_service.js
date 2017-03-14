'use strict';

import config from 'config';
import { ThriftClientFactory } from '../lib/thrift_client';
import SsoService from '../../thrift_files/gen-js/sso/SsoService';
import ssoTypes from '../../thrift_files/gen-js/sso/sso_types';

const ssoServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.sso.client'), SsoService, null);

export {
  ssoTypes,
  ssoServiceClientFactory,
};
