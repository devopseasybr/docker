#!/bin/bash
# - Script de customização da imagem Docker Terraform.

PROGRAM_LIST="wget"
HADOLINT_VERSION="v2.12.0"
HADOLINT_URL=https://github.com/hadolint/hadolint/releases/download/$HADOLINT_VERSION/hadolint-Linux-x86_64

apk update && apk add --no-cache $PROGRAM_LIST
 
addgroup -g 1000 -S hadolint && adduser  -u 1000 -S hadolint -G hadolint

wget -O /usr/bin/hadolint $HADOLINT_URL
chmod +x /usr/bin/hadolint 
rm -rf setup.sh && apk del wget  