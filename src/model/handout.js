'use strict';

import _ from 'lodash';
import {
  handoutServiceClientFactory,
  uplandTypes,
} from  '../common/upland_service';
import {quotaServiceClientFactory, tutorTypes} from '../common/tutor_service';

class HandoutManager {
  _createClient() {
    return handoutServiceClientFactory.createClient();
  }

  _createTutorClient() {
    return quotaServiceClientFactory.createClient();
  }

  async getHandout(userName, gradeType, subject, version) {
    let client = this._createClient();
    return await client.invoke('getHandout', userName, gradeType, subject, version);
  }

  async reduceHandoutRemain(userName, handouts) {
    let client = this._createClient();
    let handoutDefArr = _.map(handouts, (handout) => {
      return new uplandTypes.HandoutDef(handout);
    });
    return await client.invoke('reduceHandoutRemain', userName, handoutDefArr);
  }

  async checkHandoutSelectable(userName, handouts, season) {
    let client = this._createTutorClient();
    let handoutDefArr = _.map(handouts, (handout) => {
      return new tutorTypes.HandoutDef(handout);
    });
    return await client.invoke('checkHandoutSelectable', userName, handoutDefArr, season);
  }

  async addHandoutRecord(userName, handouts, season) {
    let client = this._createTutorClient();
    let handoutDefArr = _.map(handouts, (handout) => {
      return new tutorTypes.HandoutDef(handout);
    });
    return await client.invoke('addHandoutRecord', userName, handoutDefArr, season);
  }

  async checkIfHandoutReachLimit(userName, gradeType, subjectId, seasonId) {
    let client = this._createTutorClient();
    return await client.invoke('checkIfHandoutReachLimit', userName, gradeType, subjectId, seasonId);
  }
}

export {HandoutManager};
