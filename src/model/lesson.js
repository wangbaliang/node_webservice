'use strict';

import {
  quotaServiceClientFactory} from  '../common/tutor_service';

class LessonManager {
  _createClient() {
    return quotaServiceClientFactory.createClient();
  }

  async getDayStudyYear(day='') {
    let client = this._createClient();
    return await client.invoke('getDayStudyYear', day);
  }

  async getStudentClassSchedule(userName, seasonId) {
    let client = this._createClient();
    return await client.invoke('getStudentClassSchedule', userName, seasonId);
  }

  async getAvailableSeasons() {
    let client = this._createClient();
    return await client.invoke('getAvailableSeasons');
  }

  async changeStudentReservation(userName, templateId, startDay) {
    let client = this._createClient();
    return await client.invoke('changeStudentReservation', userName, templateId, startDay);
  }

  async studentAskLeave(userName, reservationId, leaveStartTime) {
    let client = this._createClient();
    return await client.invoke('studentAskLeave', userName, reservationId, leaveStartTime);
  }

}

export { LessonManager };
