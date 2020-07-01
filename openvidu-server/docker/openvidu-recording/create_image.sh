#!/bin/bash -x
OPENVIDU_RECORDING_UBUNTU_VERSION=$1
OPENVIDU_RECORDING_CHROME_VERSION=$2
OPENVIDU_RECORDING_DOCKER_TAG=$3
docker build --rm --build-arg CHROME_VERSION="$OPENVIDU_RECORDING_DOCKER_TAG" -f $OPENVIDU_RECORDING_UBUNTU_VERSION.Dockerfile -t openvidu/openvidu-recording:$OPENVIDU_RECORDING_DOCKER_TAG .
docker push openvidu/openvidu-recording:$OPENVIDU_RECORDING_DOCKER_TAG
