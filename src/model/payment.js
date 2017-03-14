'use strict';

import { paymentServiceClientFactory, tutorTypes } from '../common/tutor_service';


class PaymentManager {
  _createClient() {
    return paymentServiceClientFactory.createClient();
  }

  async createPayment(userName, orderId, orderSys, payMoney, orderDescription,
                      channel) {
    const paymentInfo = new tutorTypes.PaymentInfoDef({
      id: 0,
      userName: userName,
      orderId: orderId,
      orderSys: orderSys,
      status: 0,
      payMoney: payMoney,
      orderDescription: orderDescription,
      payChannel: channel,
    });
    const client = this._createClient();
    return await client.invoke('createPayment', paymentInfo);
  }

  async getPayment(paymentId) {
    const client = this._createClient();
    return await client.invoke('getPayment', paymentId);
  }

  async getPaymentByOrder(orderId, payChannel) {
    const client = this._createClient();
    return await client.invoke('getPaymentByOrder', orderId, payChannel);
  }

  async updatePaymentStatus(paymentId, isSuccess, payResult) {
    const client = this._createClient();
    return await client.invoke('updatePaymentStatus', paymentId, isSuccess, payResult);
  }
}

export { PaymentManager };
