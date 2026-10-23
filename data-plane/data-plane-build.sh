#!/bin/bash
export TAG="v1.22.2-test"
export KO_DOCKER_REPO=""
DISPATCHER_LOOM_DIRECTORY="dispatcher-loom"
mvn clean install -DskipTests
mvn clean package jib:build -pl "${DISPATCHER_LOOM_DIRECTORY}" -DskipTests