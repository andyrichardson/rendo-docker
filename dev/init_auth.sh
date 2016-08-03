#!/bin/bash
# Build container
docker build -t rendo-auth:dev -f dev/auth/Dockerfile .

# Kill any previous containers
docker rm rendo-auth-dev 1>& 2> /dev/null

# Standalone mode - expose to host
if [[ "$1" == "-s" || "$1" == "--standalone" ]]; then
    echo "Notice: Standalone Mode Active"
    PORT_FLAG="-p 80:80"
fi

# Run container
docker run -t -i $PORT_FLAG \
-v $PWD/../rendo-auth:/var/www/rendo-auth \
--name=rendo-auth-dev \
--net=user-bridge \
rendo-auth:dev
