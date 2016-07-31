#!/bin/bash
docker build -t neo4j:dev -f dev/neo4j/Dockerfile .
docker run -p 7474:7474 -v $PWD/../neo4j/data:/data neo4j:dev
