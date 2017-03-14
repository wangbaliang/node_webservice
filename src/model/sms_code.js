'use strict';

import { smsCodeServiceClientFactory } from '../common/tutor_service';


async function sendSmsCode(phone) {
  const client = smsCodeServiceClientFactory.createClient();
  const [code, result] = await client.invoke('sendSmsCode', phone);
  if (code !== 0) {
    return [code, result];
  }
  const status = result.status;
  const smsCode = result.code;
  const remainSeconds = result.remainSeconds;
  if (status === 0) {
    return [0, smsCode];
  }
  return [status, remainSeconds];
}

async function checkSmsCode(phone, code, needRemove=false) {
  const client = smsCodeServiceClientFactory.createClient();
  return await client.invoke('checkSmsCode', phone, code, needRemove);
}


export { sendSmsCode, checkSmsCode };
