#!/bin/sh

cd client/sample-app
npm install --silent
ls
CI=true
npm test
CI=""
ls
cd ../..
