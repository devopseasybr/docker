#!/bin/bash

PROGRAM_LIST="docker openrc grep git"

apk add --update --no-cache $PROGRAM_LIST

adduser  -u 1000 -S docker -G docker

service docker start

rm -rf /home/docker/setup.sh