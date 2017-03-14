'use strict';

import {
  areaServiceClientFactory,
  uplandTypes,
} from  '../common/upland_service';

class AreaManager {
  _createClient() {
    return areaServiceClientFactory.createClient();
  }

  async getDistrictByName(name) {
    let client = this._createClient();
    return await client.invoke('getDistrictByName', name);
  }

  async getDistrictByNameAndLevel(name, level) {
    // level 0:省 1:市 2:区
    let client = this._createClient();
    return await client.invoke('getDistrictByNameAndLevel', name, level);
  }

  async getAllDistrictData() {
    let client = this._createClient();
    return await client.invoke('getAllDistrictDataWithSingleName');
  }
}

export {AreaManager};
