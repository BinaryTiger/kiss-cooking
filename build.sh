#!/bin/bash

DATA_DIR=./data
BUILD_DIR=./build
RECIPE_TEMPLATE=./templates/recipe.mustache

if [ -d "$BUILD_DIR" ]; then
    rm -rf $BUILD_DIR
fi

mkdir build

for f in "$DATA_DIR"/*.dhall; do
    HASH=$(dhall hash --file $f)
    dhall-to-yaml-ng --file $f | mustache - $RECIPE_TEMPLATE > $BUILD_DIR/${HASH:7}.html
done