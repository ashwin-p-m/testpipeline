#!/bin/sh

cd client/sample-app
npm install --silent
export CI=true
npm test
export CI=""
cd ../..
