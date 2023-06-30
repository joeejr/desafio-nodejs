#!/bin/bash

npm install
npx nodemon
/docker-entrypoint.sh "$@"