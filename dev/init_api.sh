#!/bin/bash
# Build container
docker build -t rendo-api:dev -f dev/api/Dockerfile .

# Kill any previous containers
docker rm rendo-api-dev 2> /dev/null

# Run container
docker run -t -i -p 80:80 \
-v $PWD/../rendo-api:/var/www/rendo-api \
--name=rendo-api-dev \
rendo-api:dev
