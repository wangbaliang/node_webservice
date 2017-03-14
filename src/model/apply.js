'use strict';

import _ from 'lodash';
import {
  quotaServiceClientFactory,
  tutorTypes,
} from  '../common/tutor_service';
import { getDebug } from '../lib/debug_helper';

const debug = getDebug('apply');

class ApplyManager {
  _createClient() {
    return quotaServiceClientFactory.createClient();
  }

  async getAllStudentCard(userName) {
    let client = this._createClient();
    return await client.invoke('getAllStudentCard', userName);
  }

  async getStudentCardById(userName, id) {
    let client = this._createClient();
    return await client.invoke('getStudentCardById', userName, id);
  }

  async getAllServiceInfo(userName, gradeType, subject, season) {
    let client = this._createClient();
    return await client.invoke('getAllServiceInfo',
      userName, gradeType, season, subject)
  }

  async getCoachServices(userName, gradeType, subject, season) {
    let client = this._createClient();
    return await client.invoke('getCoachServices',
      userName, gradeType, season, subject);
  }

  async getCoachServiceInfo(userName, gradeType, subject, season, coach) {
    let client = this._createClient();
    return await client.invoke('getCoachServiceInfo', userName, gradeType, season, subject, coach);
  }

  async getApplyGrade(userName, gradeType) {
    let client = this._createClient();
    return await client.invoke('getApplyGrade', userName, gradeType);
  }

  async getApplyServiceByStartDay(userName, classTemplateId, startDay, rechargeCardId, classId) {
    let client = this._createClient();
    return await client.invoke('getApplyServiceByStartDay',
      userName, classTemplateId, startDay, rechargeCardId, classId);
  }

  async submitTutorService(order) {
    let client = this._createClient();
    let orderDef = new tutorTypes.TutorOrderDef(order);
    return await client.invoke('submitTutorService', orderDef);
  }

  async addUserExperienceOnceCard(userName) {
    let client = this._createClient();
    return await client.invoke('addExperienceAccount', userName);
  }

  async sendUserRegisterSms(phone, content) {
    let client = this._createClient();
    return await client.invoke('sendUserRegisterSms', phone, content);
  }

  async getNotUsedExperienceCardNum(userName) {
    let client = this._createClient();
    return await client.invoke('getNotUsedExperienceCardNum', userName);
  }

  async getOldOrderFromCrm(userName) {
    let client = this._createClient();
    return await client.invoke('getOldOrderFromCrm', userName);
  }

  async addOrderCards(studentUserName, orderId, cards, orderTime, originMoney,
                      payMoney, policyVersion, orderType) {
    let client = this._createClient();
    const cardInfo = _.map(cards, (item) => {
      return new tutorTypes.SaleRechargeCardDef(item);
    });
    debug(studentUserName, orderId,
      cardInfo, orderTime, originMoney, payMoney, policyVersion, orderType);
    return await client.invoke('addOrderAndAccount', studentUserName, orderId,
      cardInfo, orderTime, originMoney, payMoney, policyVersion, orderType);
  }
}

export {ApplyManager};
