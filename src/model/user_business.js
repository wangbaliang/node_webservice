'use strict';

import {
  quotaServiceClientFactory,
  tutorTypes, } from '../common/tutor_service'

class UserBusinessManager {
  _createClient() {
    return quotaServiceClientFactory.createClient();
  }

  async setStudentTextbookEdition(userName, textbookEdition) {
    let client = this._createClient();
    let textbookEditionDef = new tutorTypes.StudentTextbookEditionDef(textbookEdition);
    return await client.invoke('setStudentTextbookEdition', userName, textbookEditionDef);
  }

  async getStudentTextbookEdition(userName, subjectId, gradeType) {
    let client = this._createClient();
    return await client.invoke('getStudentTextbookEdition', userName, subjectId, gradeType);
  }

  async getAllStudentTextbookEdition(userName) {
    let client = this._createClient();
    return await client.invoke('getAllStudentTextbookEdition', userName);
  }

  async setDeliveryAddress(userName, deliveryAddress) {
    let client = this._createClient();
    let deliveryAddressDef = new tutorTypes.DeliveryAddressDef(deliveryAddress);
    return await client.invoke('setDeliveryAddress', userName, deliveryAddressDef);
  }

  async getDeliveryAddress(userName, id) {
    let client = this._createClient();
    return await client.invoke('getDeliveryAddress', userName, id);
  }
}

export { UserBusinessManager };
