'use strict';

import config from 'config';
import {ThriftClientFactory} from '../lib/thrift_client';
import {thriftClientWrapper} from './thrift_service';

import UserService from '../../thrift_files/gen-js/upland/UserBaseInfoService';
import AreaService from '../../thrift_files/gen-js/upland/AreaService';
import HandoutService from '../../thrift_files/gen-js/upland/HandoutService';
import TutorOrderService from '../../thrift_files/gen-js/upland/TutorOrderService';
import CourseService from '../../thrift_files/gen-js/upland/CourseService';
import ProtectorService from '../../thrift_files/gen-js/upland/ProtectorService';
import commonTypes from '../../thrift_files/gen-js/upland/common_types';
import uplandTypes from '../../thrift_files/gen-js/upland/upland_types';


const userServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.upland'), UserService, 'user_service',
  thriftClientWrapper);
const areaServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.upland'), AreaService, 'area_service',
  thriftClientWrapper);
const handoutServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.upland'), HandoutService, 'handout_service',
  thriftClientWrapper);
const tutorOrderServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.upland'), TutorOrderService, 'tutor_order_service',
  thriftClientWrapper);
const courseServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.upland'), CourseService, 'course_service',
  thriftClientWrapper);
const protectorServiceClientFactory = new ThriftClientFactory(
  config.get('thrift_service.upland'), ProtectorService, 'protector_service',
  thriftClientWrapper);

export {
  commonTypes,
  uplandTypes,
  userServiceClientFactory,
  areaServiceClientFactory,
  handoutServiceClientFactory,
  tutorOrderServiceClientFactory,
  courseServiceClientFactory,
  protectorServiceClientFactory,
};
