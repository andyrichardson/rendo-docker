#!/bin/bash
docker build -t api_container:dev -f dev/api/Dockerfile .
docker run -t -i -p 80:80 -v $PWD/../rendo-api:/var/www/rendo-api api_container:dev
