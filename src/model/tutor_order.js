'use strict';
import { log } from '../lib/log_helper';

import {
  tutorOrderServiceClientFactory,
  uplandTypes, } from  '../common/upland_service';


class TutorOrderManager {

  _createClient() {
    return tutorOrderServiceClientFactory.createClient();
  }

  async addRefundOrder(orderId, userName, payeeInfo, cancelPayPriceInfoJson, amount) {
    let client = this._createClient();
    const PayeeDef = new uplandTypes.PayeeDef(payeeInfo);
    return await client.invoke('addRefundOrder', orderId, userName, PayeeDef, cancelPayPriceInfoJson, amount);
  }

  async addLectureDeliveryOrder(userName, subjectId, seasonId, lectureIds, address) {
    let client = this._createClient();
    const addressDef = new uplandTypes.DeliveryAddressDef(address);
    log.debug(addressDef);
    return await client.invoke('addLectureDeliveryOrder', userName, subjectId, seasonId, lectureIds, addressDef);
  }

  async getAllOrders(userName) {
    let client =  this._createClient();
    return await client.invoke('getAllOrders', userName);
  }

  async getUserNotCompleteRefundOrders(userName) {
    let client =  this._createClient();
    return await client.invoke('getUserNotCompleteRefundOrders', userName);
  }

  async getOrder(orderId) {
    const client = this._createClient();
    return await client.invoke('getOrderById', orderId);
  }

  async setOrderStatus(orderId, status) {
    const client = this._createClient();
    return await client.invoke('setOrderStatus', orderId, status);
  }
}

export { TutorOrderManager };
