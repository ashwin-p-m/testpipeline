#!/bin/sh

cd server
docker image build . --tag "$DOCKER_ACCOUNT_NAME/$SERVER_IMAGE:$SERVER_TAG"
docker image push "$DOCKER_ACCOUNT_NAME/$SERVER_IMAGE:$SERVER_TAG"
docker image rm "$DOCKER_ACCOUNT_NAME/$SERVER_IMAGE:$SERVER_TAG"
cd ..
