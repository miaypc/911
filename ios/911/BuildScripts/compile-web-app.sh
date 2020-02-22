#! /usr/bin/env bash

if ! which yarn > /dev/null; then
  echo "error: yarn is missing"
  exit 1
fi

SRCROOT="${SRCROOT:=$PWD}"
WEB_APP_DIR="$SRCROOT/.."

yarn --cwd $WEB_APP_DIR
yarn build --cwd $WEB_APP_DIR
