'use strict';
import {log} from '../lib/log_helper';

import {
  ExperienceServiceClientFactory,
  tutorTypes,
} from  '../common/tutor_service';
import {
  protectorServiceClientFactory,
  uplandTypes,
} from '../common/upland_service';

class ExperienceManager {
  _createClient() {
    return ExperienceServiceClientFactory.createClient();
  }

  _createUplandClient() {
    return protectorServiceClientFactory.createClient();
  }

  async getAllVideoInfo() {
    let client = this._createClient();
    return await client.invoke('getAllVideoInfo');
  }

  async addVideoPlayTimes(videoId) {
    let client = this._createClient();
    return await client.invoke('addVideoPlayTimes', videoId);
  }

  async addUserPlayHistory(userName, videoId, startTime, playTime) {
    let client = this._createClient();
    return await client.invoke('addUserPlayHistory', userName, videoId, startTime, playTime);
  }

  async isUserHasRechargeCard(userName) {
    let client = this._createClient();
    return await client.invoke('isUserHasRechargeCard', userName);
  }

  async isHasExperience(userName) {
    let client = this._createClient();
    return await client.invoke('isHasExperience', userName);
  }

  async setUserExperience(userName) {
    let client = this._createClient();
    return await client.invoke('setUserExperience', userName);
  }

  async getProtectorInfo(userNames) {
    let client = this._createUplandClient();
    return await client.invoke('getProtectorInfo', userNames);
  }

  async applyInteraction(userName) {
    let client = this._createClient();
    return await client.invoke('applyInteraction', userName);
  }

}

export {ExperienceManager};
