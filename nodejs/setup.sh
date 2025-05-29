#!/bin/bash
set -e 

PROGRAM_LIST="curl xz-utils"
NODEJS_VERSION=v20.11.0
NODEJS_URL="https://nodejs.org/dist/${NODEJS_VERSION}/node-${NODEJS_VERSION}-linux-x64.tar.xz"

apt-get update && apt-get install $PROGRAM_LIST -y
useradd node

curl -o nodejs.tar.xz $NODEJS_URL
tar -xvJf nodejs.tar.xz
mv node-v20.11.0-linux-x64 /opt/nodejs 
mkdir -p /nodejs/ && mv .npmrc /nodejs/

chown node:node /opt/nodejs -R && chown node:node /nodejs/ -R
chown -R 1001:1001 "/nodejs/.npmrc"

mkdir -p /home/node && chown node:node /home/node

rm -f *.tar.xz setup.sh 
apt-get remove curl -y