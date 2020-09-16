#!/bin/bash

cd "$(dirname "$0")"; cd ../../; # Makes sure we're in the right path for referring to docker commands.

# To get folder name tip from https://stackoverflow.com/a/17072017/687274
docker-compose -p ${PWD##*/} -f docker-compose.local.yml up -d

CONTAINER_NAME=`docker ps --format "{{.Names}}" |grep -E "${PWD##*/}_workspace"`


