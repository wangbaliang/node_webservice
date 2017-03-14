'use strict';
import { log } from '../lib/log_helper';

import {
  quotaServiceClientFactory,
  tutorTypes, } from  '../common/tutor_service';


class CancelPayManager {
  _createClient() {
    return quotaServiceClientFactory.createClient();
  }

  async getCancelRechargeCards(userName) {
    let client = this._createClient();
    return await client.invoke('getAllStudentCard', userName);
  }

  async getCancelReservation(userName) {
    let client = this._createClient();
    return await client.invoke('getStudentCanCancelReservationInfo', userName);
  }

  async getClassPlanByTemplate(userName, classTemplateId, startDay, endDay) {
    let client = this._createClient();
    return await client.invoke('getClassPlanByTemplate', userName, classTemplateId, startDay, endDay);
  }

  async getClassPlan(userName, classId, startDay, endDay) {
    let client = this._createClient();
    return await client.invoke('getClassPlan', userName, classId, startDay, endDay);
  }

  async computeCancelPay(userName, cardIdList, reservationList) {
    let client = this._createClient();
    let user_name = userName;
    let card_id_list = [...cardIdList];
    let reservation_list = [ ];
    for (let reservation of reservationList) {
      let reservationDef = new tutorTypes.CancelReservationInfoDef(reservation);
      reservation_list.push(reservationDef);
    }
    return await client.invoke('computeCancelPay', user_name, card_id_list, reservation_list);
  }

  async cancelPay(userName, cardIdList, reservationList) {
    let client = this._createClient();
    let user_name = userName;
    let card_id_list = [...cardIdList];
    let reservation_list = [ ];
    for (let reservation of reservationList) {
      let reservationDef = new tutorTypes.CancelReservationInfoDef(reservation);
      reservation_list.push(reservationDef);
    }
    return await client.invoke('cancelPay', user_name, card_id_list, reservation_list);
  }

  // 取消退费 暂时用不到。
  // async cancelRefund(userName, cancelPriceInfoList) {
  //   let client = this._createClient();
  //   let user_name = userName;
  //   let cancel_price_list = [];
  //   for (let cancel_price_info of cancelPriceInfoList) {
  //
  //     let cancel_order_list = [];
  //     let order_list = cancel_price_info.cancelOrderInfo;
  //     for (let cancel_order_info of order_list) {
  //       let cancel_card_list = [];
  //       let card_list = cancel_order_info.cancelCardInfo;
  //       for (let card_info of card_list) {
  //         let card = {
  //           rechargeCardId: card_info.rechargeCardId,
  //           subjectId: card_info.subjectId,
  //           cancelServiceNum: card_info.cancelServiceNum,
  //           price: card_info.price,
  //         };
  //         let cardDef = new tutorTypes.CancelCardInfoDef(card);
  //         card_list.push(cardDef);
  //       }
  //       let order = {
  //         orderId: cancel_order_info.orderId,
  //         cancelCardInfo: card_list,
  //       };
  //       let orderDef = new tutorTypes.CancelOrderInfoDef(order);
  //       order_list.push(orderDef);
  //     }
  //     let price_info = {
  //       cancelOrderInfo: order_list,
  //       isMerged: cancel_price_info.isMerged,
  //       isOldOrder: cancel_price_info.isOldOrder,
  //       totalCancelNum: cancel_price_info.totalCancelNum,
  //       payNum: cancel_price_info.payNum,
  //       totalCancelMoney: cancel_price_info.totalCancelMoney,
  //       payMoney: cancel_price_info.payMoney,
  //       giftMoney: cancel_price_info.giftMoney,
  //     };
  //     let priceDef = new tutorTypes.CancelPayPriceInfoDef(price_info);
  //     cancel_price_list.push(priceDef)
  //   }
  //   return await client.invoke('cancelRefund', user_name, cancel_price_list);
  // }

  async getBankRecordInfo(userName) {
    let client = this._createClient();
    return await client.invoke('getBankRecordInfo', userName);
  }

  async getBankRecordById(userName, cardId) {
    let client = this._createClient();
    return await client.invoke('getBankRecordById', userName, cardId);
  }

  async addBankCard(userName, beneficiaryName, bankName, bankCard, bankAddress, subBankName, phone) {
    let client = this._createClient();
    return await client.invoke('addBankCard', userName, beneficiaryName, bankName, bankCard, bankAddress, subBankName, phone);
  }

}
export { CancelPayManager };
