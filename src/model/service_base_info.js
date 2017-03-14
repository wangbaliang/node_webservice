'use strict';

import {
  classTemplateServiceClientFactory,
  periodServiceClientFactory,
  seasonServiceClientFactory,
} from  '../common/tutor_service';


class ClassTemplateManager {
  _createClient() {
    return classTemplateServiceClientFactory.createClient();
  }

  async getById(id) {
    let client = this._createClient();
    return await client.invoke('getById', id);
  }
}


class PeriodManager {
  _createClient() {
    return periodServiceClientFactory.createClient();
  }

  async getPeriod(gradeType, subject, season) {
    let client = this._createClient();
    return await client.invoke('getPeriod', gradeType, subject, season);
  }
}

class SeasonManager {
  _createClient() {
    return seasonServiceClientFactory.createClient();
  }

  async getSeason(ids) {
    let client = this._createClient();
    return await client.invoke('getSeason', ids);
  }
}


export {ClassTemplateManager, PeriodManager, SeasonManager};
