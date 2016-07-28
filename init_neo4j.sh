#!/bin/bash
docker build -t neo4j -f neo4j/Dockerfile .
docker run -p 7474:7474 neo4j
