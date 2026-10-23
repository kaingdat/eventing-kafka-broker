#!/bin/bash
export TAG="v1.22.1-test"
export KO_DOCKER_REPO=""
export KO_FLAGS='--platform=all -B'
export CMD_DIR="./cmd/kafka-controller"
ko build ${KO_FLAGS} ${CMD_DIR} -t ${TAG}
