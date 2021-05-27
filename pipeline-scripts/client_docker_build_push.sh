#!/bin/sh

cd client
docker image build . --tag "$DOCKER_ACCOUNT_NAME/$CLIENT_IMAGE:$CLIENT_TAG"
docker image push "$DOCKER_ACCOUNT_NAME/$CLIENT_IMAGE:$CLIENT_TAG"
docker image rm "$DOCKER_ACCOUNT_NAME/$CLIENT_IMAGE:$CLIENT_TAG"
cd ..
