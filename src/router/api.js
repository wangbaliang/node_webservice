'use strict';

import Router from 'koa-router';

import { jsonService } from '../middleware/json_service';
import { csrfWithCheck } from '../middleware/csrf';
import { needLogon } from '../middleware/auth';
import { inviteCode } from '../middleware/invite_code';
import { noCache } from '../middleware/cache_control';

import {
  logonController,
  logoutController,
  registerController,
  getUserApplyReadyStatusController,
  bindMobileController,
  getUserBaseInfoController,
  updateBaseInfoController,
  getNotUsedExperienceCardNumController,
  changePasswordController,
} from '../controller/user';
import {
  sendSmsCodeController,
  checkSmsCodeController,
  checkMobileBindController,
  checkUserNameIsRegisterController,
} from '../controller/mobile';
import {
  getStudentCardByIdController,
  getAllStudentCardController,
} from '../controller/card';
import {
  getPeriodController,
  getSeasonController,
} from '../controller/service_base_info';
import {
  getApplyStartController,
  getApplyGradeController,
  getCanApplyServiceInfoController,
  getCoachServicesController,
  getApplyDaysByStartDayController,
  submitTutorServiceController,
} from '../controller/apply';
import {
  getStudentClassScheduleController,
  cancelLessonController,
  studentAskLeaveController,
  getAvailableSeasons,
} from '../controller/lesson';
import {
  getTextbookPressController,
  setTextbookEditionController,
  getTextbookEditionController,
  getAllTextbookEditionController,
  getAllTextbookSummaryController,
} from '../controller/textbook';
import {
  setDeliveryAddressController,
  getDeliveryAddressController,
  getAllDeliveryAddressController,
} from '../controller/delivery_address';
import {
  sendCancelSmsCodeController,
  isCanPostNewRefundOrder,
  getCancelRechargeCardsController,
  getCancelReservationInfoController,
  computeCancelPayController,
  cancelPayController,
  // cancelRefundController,
  getClassPlanByTemplateController,
  getClassPlanController,
  getBankRecordInfoController,
  getBankRecordByIdController,
  addBankRecordController,
} from '../controller/cancel_pay';
import {
  getHandoutController,
  checkIfHandoutReachLimitController
} from '../controller/handout';

import {getAllDistrictDataController} from '../controller/delivery_address';
import {
  getUserCourseLectureInfoController,
  getUserCanDownloadSubjectsController,
  getCourseLessonLectureDownloadInfoController
} from '../controller/lecture';
import {
  getUserAllOrdersController
} from '../controller/order';

import { createPayController, beginPayController, submitPayController,
  checkOrderPayStatusController, checkWxpayStatusController } from '../controller/payment';
import {
  getAllVideoController,
  addVideoPlayTimesController,
  addUserPlayHistoryController,
  getProtectorInfoController,
  applyInteractionController,
} from '../controller/experience_center';

const router = new Router();

router.use(noCache());
router.use(csrfWithCheck());
router.use(inviteCode(false));
router.use(jsonService());


// 用户注册
router.post('/user/register', registerController);

// 用户登录
router.post('/logon', logonController);

// 用户退出登录
router.post('/logoff', logoutController);

// 检查手机号是否已经被注册
router.get('/phone/is_register', checkMobileBindController);

// 检查用户名是否已被注册
router.get('/user/is_register', checkUserNameIsRegisterController);

// 发送短信验证码
router.get('/sms/send_valid_code', sendSmsCodeController);

// 检查验证码是否有效（最多9次）
router.post('/sms/check_valid_code', checkSmsCodeController);

// 获取用户未使用的体验卡数量
router.get('/my/experience_card_num', needLogon(), getNotUsedExperienceCardNumController);

// 获取用户全部教练伴学订单
router.get('/my/order/list', needLogon(), getUserAllOrdersController);

// 获取用户的约课准备状态
router.get('/my/info/apply_ready_status', needLogon(), getUserApplyReadyStatusController);

// 用户绑定手机号
router.post('/my/info/bind_phone', needLogon(), bindMobileController);

// 学习中心获取用户基本信息
router.get('/my/info/base_info', needLogon(), getUserBaseInfoController);

// 获取最近两个未结束学季
router.get('/season/available', needLogon(), getAvailableSeasons);

// 获取用户已约课表
router.get('/my/lesson/schedule', needLogon(), getStudentClassScheduleController);

// 调课
router.post('/my/lesson/cancel_reservation', needLogon(), cancelLessonController);

// 请假
router.post('/my/lesson/ask_leave', needLogon(), studentAskLeaveController);

// 获取能选择的讲义套数
router.get('/handout/limit/:gradeType/:subject/:season', needLogon(), checkIfHandoutReachLimitController);

// 根据年级、科目、版本编号、学季编号获取讲义
router.get('/handout/:gradeType/:subject/:edition/:season', needLogon(), getHandoutController);

// 获取教材编号对应的教材出版社
router.get('/textbook/press_name/:gradeType/:subject', needLogon(), getTextbookPressController);

// 获取用户设置的教材版本
router.get('/my/info/textbook/list', needLogon(), getAllTextbookEditionController);

// 根据年级科目获取用户设置的教材版本
router.get('/my/info/textbook/:gradeType/:subject', needLogon(), getTextbookEditionController);

// 设置用户的教材版本信息
router.post('/my/info/textbook/:gradeType/:subject', needLogon(), setTextbookEditionController);

// 获取所有的地区信息
router.get('/district', getAllDistrictDataController);

// 获取所有快递地址
router.get('/my/info/address/list', needLogon(), getAllDeliveryAddressController);

// 获取指定id地址
router.get('/my/info/address/:id', needLogon(), getDeliveryAddressController);

// 新增或修改快递地址
router.post('/my/info/address', needLogon(), setDeliveryAddressController);

// 获取教材概要信息
router.get('/textbook/summary/list', needLogon(), getAllTextbookSummaryController);

// 获取用户约课卡
router.get('/my/recharge_card/list', needLogon(), getAllStudentCardController);

// 根据id获取用户约课卡
router.get('/my/recharge_card/:id', needLogon(), getStudentCardByIdController);

// 获取可选时段
router.get('/period/list', needLogon(), getPeriodController);

// 根据指定id学季
router.get('/season', needLogon(), getSeasonController);

// 获取学生报名的年级
router.get('/apply/grade', needLogon(), getApplyGradeController);

// 获取日历开始日期
router.get('/reservation/start/:season', needLogon(), getApplyStartController);

// 获取选择教练时，可选时段概况
router.get('/reservation/coach', needLogon(), getCoachServicesController);

// 获取可约课表信息
router.get('/reservation/lesson_schedule', needLogon(), getCanApplyServiceInfoController);

// 根据选择的开始日期获取约课详情
router.get('/reservation/apply_service', needLogon(), getApplyDaysByStartDayController);

// 用户提交约课信息
router.post('/reservation/submit', needLogon(), submitTutorServiceController);

// 学习中心获取用户基本信息
router.get('/my/info/base_info', needLogon(), getUserBaseInfoController);

// 学习中心修改用户基本信息
router.post('/my/info/base_info', needLogon(), updateBaseInfoController);

// 学习中心修改用户密码
router.post('/my/info/password', needLogon(), changePasswordController);

// 退费， 向用户发送验证码
router.get('/cancel/send_valid_code', needLogon(), sendCancelSmsCodeController);

// 退课页面，获取学生可退约课卡共用获取约课卡接口
router.get('/cancel/recharge_cards', needLogon(), getCancelRechargeCardsController);

// 退课页面，获取学生已约但未上完的课表信息
router.get('/cancel/reservation', needLogon(), getCancelReservationInfoController);

// 退课页面，获取未分班的约课的课表
router.get('/cancel/class_template_plan', needLogon(), getClassPlanByTemplateController);

// 退课页面，获取已分班约课的课表
router.get('/cancel/class_plan', needLogon(), getClassPlanController);

// 退费判断是否有未退订单
router.get('/cancel/is_can_refund', needLogon(), isCanPostNewRefundOrder);

// 计算退费金额，返还退费详情信息
router.post('/cancel/compute', needLogon(), computeCancelPayController);

// 退费，返返还退费详情信息
router.post('/cancel/cancel_pay', needLogon(), cancelPayController);

// // 退费，取消退费
// router.post('/cancel/cancel_refund', needLogon(), cancelRefundController);

// 获取用户退款银行地址所有记录
router.get('/bank_records', needLogon(), getBankRecordInfoController);

// 单条获取用户退款银行地址记录，根据记录id
router.get('/bank_record', needLogon(), getBankRecordByIdController);

// 新增用户退款银行地址记录，根据记录id
router.post('/bank_record', needLogon(), addBankRecordController);

// 获取讲义列表
router.get('/my/lecture/list', needLogon(), getUserCourseLectureInfoController);
// 获取可以下载的讲义学科
router.get('/my/lecture/subjects', needLogon(), getUserCanDownloadSubjectsController);
// 获取具体课程的讲义
router.get('/my/lecture/c/:id', needLogon(), getCourseLessonLectureDownloadInfoController);

// 创建支付。支付流程第一步
router.post('/pay/create', needLogon(), createPayController);
// 开始支付，展示支付相关信息。支付流程第二步
router.get('/pay/start', needLogon(), beginPayController);
// 确认开始支付。支付流程第三步
router.post('/pay/submit', needLogon(), submitPayController);
// 检测订单支付状态
router.post('/pay/check', needLogon(), checkOrderPayStatusController);
// 微信支付结果检查
router.post('/wxpay/check', needLogon(), checkWxpayStatusController);

router.get('/pop_videos', getAllVideoController);
router.post('/add/video/play_times', addVideoPlayTimesController);
router.post('/add/video/play_history', needLogon(), addUserPlayHistoryController);

// 获取保护人信息
router.get('/protector', needLogon(), getProtectorInfoController);

// 申请互动体验
router.get('/apply/interaction', needLogon(), applyInteractionController);

export { router };
