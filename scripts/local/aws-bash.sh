#!/bin/bash

cd "$(dirname "$0")"; cd ../../; # Makes sure we're in the right path for referring to docker commands.

CONTAINER_NAME=`docker ps --format "{{.Names}}" |grep -E "${PWD##*/}_aws"`

# Tip from https://stackoverflow.com/a/17072017/687274
if [ "$(uname)" == "Darwin" ]; then
    docker exec -it $CONTAINER_NAME bash
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
    winpty docker exec -it $CONTAINER_NAME bash
else
    docker exec -it $CONTAINER_NAME bash
fi

