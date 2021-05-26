#!/bin/sh

cd client/sample-app
npm install --silent
ls
export CI=true
npm test
export CI=""
ls
cd ../..
