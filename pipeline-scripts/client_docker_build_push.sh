#!/bin/sh

cd client
echo -n $ARTIFACTORY_CRED_PSW | docker login --username $ARTIFACTORY_CRED_USR --password-stdin $DOCKER_BASE
docker image build . \
    --tag "$DOCKER_BASE/$DOCKER_ACCOUNT_NAME/$CLIENT_IMAGE:$CLIENT_TAG" \
    --no-cache
docker image push "$DOCKER_BASE/$DOCKER_ACCOUNT_NAME/$CLIENT_IMAGE:$CLIENT_TAG"
docker image rm "$DOCKER_BASE/$DOCKER_ACCOUNT_NAME/$CLIENT_IMAGE:$CLIENT_TAG"
docker logout
cd ..
