'use strict';

import {
  userServiceClientFactory,
  uplandTypes, } from '../common/upland_service';
import { AutoIncIdManager } from '../common/auto_increment_id';
import { quotaServiceClientFactory } from '../common/tutor_service';


class UserBaseInfoManager {

  _createClient() {
    return userServiceClientFactory.createClient();
  }

  async checkUserPassword(userName, password) {
    const client = this._createClient();
    return await client.invoke('checkUserPassword', userName, password);
  }

  async checkUserMobileAndPassword(mobile, password) {
    const client = this._createClient();
    return await client.invoke('checkUserMobileAndPassword', mobile, password);
  }

  async registerUser(user) {
    const client = this._createClient();
    const userDef = new uplandTypes.UserDef(user);
    return await client.invoke('registerUser', userDef);
  }

  async isMobileBind(mobile) {
    const client = this._createClient();
    return await client.invoke('isMobileBind', mobile);
  }

  async bindMobile(userName, mobile) {
    const client = this._createClient();
    return await client.invoke('bindMobile', userName, mobile);
  }

  async getByUserIds(userIdList) {
    const client = this._createClient();
    return await client.invoke('getByUserIds', userIdList);
  }

  async getByUserId(userId) {
    const [status, data] = await this.getByUserIds([userId]);
    if (!data || data.length < 1) {
      return [status, null];
    }
    return [status, data[0]];
  }

  async getByUserNames(userNameList) {
    const client = this._createClient();
    return await client.invoke('getByUserNames', userNameList);
  }

  async getByUserName(userName) {
    const [status, data] = await this.getByUserNames([userName]);
    if (!data || data.length < 1) {
      return [status, null];
    }
    return [status, data[0]];
  }

  async updateBaseInfo(userName, info) {
    const client = this._createClient();
    const args = [];
    args.push(userName);
    args.push(info.realName ? info.realName : '');
    args.push(info.grade ? info.grade : '');
    args.push(info.areaCode ? info.areaCode : '');
    args.push(info.schoolName ? info.schoolName : '');
    args.push(info.qq ? info.qq : '');
    args.push(info.email ? info.email : '');
    args.push(info.gradeType ? info.gradeType : 0);
    args.push(info.subjectClassify ? info.subjectClassify : 0);
    return await client.invoke('updateUserBaseInfo', ...args);
  }

  async genUserName() {
    const autoIncManager = new AutoIncIdManager('user_name_inc');
    const id = await autoIncManager.createId();
    const incNum = 1280000000 + id;
    const randomNum = Math.floor(Math.random() * 152000) + 8000;
    return 'st_' + incNum.toString(20) + randomNum.toString(20);
  }

  async getSoftTestInfo(userName) {
    const client = quotaServiceClientFactory.createClient();
    return await client.invoke('getUserSoftTestInfo', userName);
  }

  async changePassword(userName, oldPassword, newPassword) {
    const client = this._createClient();
    return await client.invoke('changePassword', userName, oldPassword, newPassword);
  }

  async syncUsers(userNameList) {
    const client = quotaServiceClientFactory.createClient();
    return await client.invoke('syncUserInfo', userNameList);
  }
}

export { UserBaseInfoManager };
