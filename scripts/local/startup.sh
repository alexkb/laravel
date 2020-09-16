#!/bin/bash

cd "$(dirname "$0")"; cd ../../; # Makes sure we're in the right path for referring to docker commands.

# To get folder name tip from https://stackoverflow.com/a/17072017/687274
docker-compose -p ${PWD##*/} -f docker-compose.local.yml up -d

CONTAINER_NAME=`docker ps --format "{{.Names}}" |grep -E "${PWD##*/}_workspace"`

if [ "$(uname)" == "Darwin" ] || [ "$(uname)" == "Linux" ]; then
    docker exec -it $CONTAINER_NAME composer install
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
    winpty docker exec -it $CONTAINER_NAME composer install
else
    echo "OS detection unsuccessful. Please load up your workspace and run 'composer install' manually"
fi
