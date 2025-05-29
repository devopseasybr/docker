#!/bin/bash

PROGRAM_LIST="curl"

apk update && apk add $PROGRAM_LIST

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

apk del curl
rm kubectl kubectl.sha256

adduser kubectl
chown kubectl:kubectl /usr/local/bin/kubectl -R

rm -f /home/kubectl/setup.sh