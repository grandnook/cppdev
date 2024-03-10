#!/bin/bash

# Usage:
#     1. bash teardown.sh          stop and remove container
#     2. bash teardown.sh image    stop and remove container and image

if [ $# -eq 0 ]; then
    docker-compose down
elif [ $# -eq 1 ] && [ "$1" == "image" ]; then
    docker-compose down --rmi all
fi
