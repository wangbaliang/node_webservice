'use strict';

export function isMobile(text) {
  return /^1[34578]\d{9}$/.test(text);
}

export function isAddress(text) {
  return /^(.+?)市(.+?)[区, 县](.+?)$/.test(text) || /^(.+?)省(.+?)市(.+?)[区, 县](.+?)$/.test(text);
}

export function isUserName(text) {
  return /^[a-zA-Z][a-zA-Z0-9]{4,19}$/.test(text);
}
