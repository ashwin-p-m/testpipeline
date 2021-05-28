#!/bin/sh

cd server
# echo -n $ARTIFACTORY_CRED_PSW | docker login --username $ARTIFACTORY_CRED_USR --password-stdin $DOCKER_BASE
docker image build . --tag "$DOCKER_BASE/$DOCKER_ACCOUNT_NAME/$SERVER_IMAGE:$SERVER_TAG"
docker image push "$DOCKER_BASE/$DOCKER_ACCOUNT_NAME/$SERVER_IMAGE:$SERVER_TAG"
docker image rm "$DOCKER_BASE/$DOCKER_ACCOUNT_NAME/$SERVER_IMAGE:$SERVER_TAG"
docker logout
cd ..
