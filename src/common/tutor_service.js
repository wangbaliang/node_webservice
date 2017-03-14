'use strict';

import config from 'config';
import { ThriftClientFactory } from '../lib/thrift_client';
import { thriftClientWrapper } from './thrift_service';

import SmsCodeService from '../../thrift_files/gen-js/tutor/SmsCodeService';
import QuotaService from '../../thrift_files/gen-js/tutor/QuotaService';
import ClassTemplateService from '../../thrift_files/gen-js/tutor/ClassTemplateService';
import PeriodService from '../../thrift_files/gen-js/tutor/PeriodService';
import SeasonService from '../../thrift_files/gen-js/tutor/SeasonService';
import PaymentService from '../../thrift_files/gen-js/tutor/PaymentService';
import ExperienceService from '../../thrift_files/gen-js/tutor/ExperienceService';
import commonTypes from '../../thrift_files/gen-js/tutor/common_types';
import tutorTypes from '../../thrift_files/gen-js/tutor/tutor_types';

const smsCodeServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.tutor'), SmsCodeService, 'sms_code_service',
  thriftClientWrapper);
const quotaServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.tutor'), QuotaService, 'quota_service',
  thriftClientWrapper);
const classTemplateServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.tutor'), ClassTemplateService, 'class_template_service',
  thriftClientWrapper);
const periodServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.tutor'), PeriodService, 'period_service',
  thriftClientWrapper);
const seasonServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.tutor'), SeasonService, 'season_service',
  thriftClientWrapper);
const paymentServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.tutor'), PaymentService, 'payment_service',
  thriftClientWrapper);
const ExperienceServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.tutor'), ExperienceService, 'experience_service',
  thriftClientWrapper);

export {
  commonTypes,
  tutorTypes,
  smsCodeServiceClientFactory,
  quotaServiceClientFactory,
  classTemplateServiceClientFactory,
  periodServiceClientFactory,
  seasonServiceClientFactory,
  paymentServiceClientFactory,
  ExperienceServiceClientFactory,
};
