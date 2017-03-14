#!/usr/bin/env bash

patch node_modules/thrift/lib/nodejs/lib/thrift/connection.js < vendor-file/1063.patch
