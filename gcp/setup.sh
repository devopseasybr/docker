#!/bin/bash

PROGRAM_LIST="curl=8.12.1-r0 python3=3.12.9-r0 grep=3.11-r0"
SDK_VERSION=512.0.0-linux-x86_64.tar.gz
SDK_URL=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-$SDK_VERSION

apk update && apk add --no-cache $PROGRAM_LIST
 
addgroup -g 1000 -S gcp && adduser  -u 1000 -S gcp -G gcp

curl -O $SDK_URL && tar xzf google-cloud-cli-$SDK_VERSION
rm -rf google-cloud-cli-$SDK_VERSION /google-cloud-sdk/bin/anthoscli /google-cloud-sdk/bin/bq /google-cloud-sdk/platform/bundledpythonunix/ setup.sh
apk del curl