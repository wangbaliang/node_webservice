'use strict';

import { assert } from 'chai';
import { UserBaseInfoManager } from '../../src/model/user';


describe('model/user', () => {
  describe('UserBaseInfoManager', () => {
    describe('.checkUserPassword', () => {
      it('should check success', async () => {
        let manager = new UserBaseInfoManager();
        let [code, data] = await manager.checkUserPassword('marstest', '111111');
        assert.equal(code, 0);
        assert.equal(data, 'marstest');
      });
    });
  });
});
