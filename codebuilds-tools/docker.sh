#!/bin/bash

DOCKER_IMAGE=debian:latest;
docker pull ${DOCKER_IMAGE};
docker images;
chmod +x ${TRAVIS_BUILD_DIR}/codebuilds-tools/build.sh;
docker run -v ${TRAVIS_BUILD_DIR} -t ${DOCKER_IMAGE} /bin/bash -c "ls ${TRAVIS_BUILD_DIR}";
