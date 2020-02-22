#! /usr/bin/env bash

if [ -z "$SRCROOT" ] && [ -z "$BUILT_PRODUCTS_DIR" ] && [ -z "$UNLOCALIZED_RESOURCES_FOLDER_PATH" ]; then
    echo "error: run from within Xcode build process"
    exit 1
fi

WEB_APP_BUILD_DIR="$SRCROOT/../build"

if [ ! -d "$WEB_APP_BUILD_DIR" ]; then
  echo "error: $WEB_APP_BUILD_DIR does not exist"
  exit 1
fi

cp -fR "$WEB_APP_BUILD_DIR/" "$BUILT_PRODUCTS_DIR/$UNLOCALIZED_RESOURCES_FOLDER_PATH/web-app"
