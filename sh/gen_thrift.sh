#!/usr/bin/env bash
rm -r -f thrift_files/gen-js/upland
mkdir -p thrift_files/gen-js/upland
thrift --gen js:node -out thrift_files/gen-js/upland/ thrift_files/idl_files/common.thrift
thrift --gen js:node -out thrift_files/gen-js/upland/ thrift_files/idl_files/upland.thrift
rm -r -f thrift_files/gen-js/tutor
mkdir -p thrift_files/gen-js/tutor
thrift --gen js:node -out thrift_files/gen-js/tutor/ thrift_files/idl_files/common.thrift
thrift --gen js:node -out thrift_files/gen-js/tutor/ thrift_files/idl_files/tutor.thrift
rm -r -f thrift_files/gen-js/sso
mkdir -p thrift_files/gen-js/sso
thrift --gen js:node -out thrift_files/gen-js/sso/ thrift_files/idl_files/sso.thrift
