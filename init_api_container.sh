#!/bin/bash
docker build -t api_container -f api/Dockerfile .
docker run -p 80:80 api_container
