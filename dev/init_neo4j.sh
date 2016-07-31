#!/bin/bash
# Build container
docker build -t neo4j:dev -f dev/neo4j/Dockerfile .

# Kill any previous containers
docker rm noe4j-dev 2> /dev/null

# Run container
docker run -p 7474:7474 \
-v $PWD/../neo4j/data:/data \
--name=neo4j-dev \
neo4j:dev
