#!/bin/bash
# Build container
docker build -t rendo-oauth:dev -f dev/oauth/Dockerfile .

# Kill any previous containers
docker rm rendo-oauth-dev 1>& 2> /dev/null

# Run container
docker run -t -i -p 80:80 \
-v $PWD/../rendo-oauth:/var/www/rendo-oauth \
--name=rendo-oauth-dev \
--net=user-bridge \
rendo-oauth:dev
