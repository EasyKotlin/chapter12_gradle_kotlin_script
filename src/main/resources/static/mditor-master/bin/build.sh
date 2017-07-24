#!/bin/bash

set -e

npm run clear 
npm run lint

export NODE_ENV=dev 
webpack --display-error-details 

export NODE_ENV=prod 
webpack --display-error-details

rm -rf ./docs/demo/*
cp -R ./dist/* ./docs/demo/