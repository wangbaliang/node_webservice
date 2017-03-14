'use strict';

import uuid from 'uuid';

export function getUuid(option, outputEncoding) {
  const buffer = new Buffer(16);
  uuid.v4(option || null, buffer);
  return buffer.toString(outputEncoding || 'hex');
}
