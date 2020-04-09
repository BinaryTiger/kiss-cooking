#!/usr/local/bin/bash

DATA_DIR=./data
BUILD_DIR=./build
TEMP_DIR=./build/temp
STATIC_DIR=./static
RECIPE_TEMPLATE=./templates/recipe.mustache
RECIPE_LIST_TEMPLATE=./templates/recipeList.mustache

if [ -d "$BUILD_DIR" ]; then
    rm -rf $BUILD_DIR
fi

mkdir $BUILD_DIR
mkdir $TEMP_DIR

declare -A hash_array

# Build every recipe and keep their hash ref in the array
for f in "$DATA_DIR"/*.dhall; do
    HASH=$(dhall hash --file $f)
    NAME=$(basename -- $f .dhall)

    hash_array[$NAME]=${HASH:7}

    dhall-to-yaml-ng --file $f | mustache - $RECIPE_TEMPLATE > $BUILD_DIR/${HASH:7}.html
done

# Import all static files as is
for f in $STATIC_DIR; do
    cp "$f"/* $BUILD_DIR
done

echo "recipes:" >> $TEMP_DIR/recipes.yaml
for h in "${!hash_array[@]}"; do
    echo "- name: $h" >> $TEMP_DIR/recipes.yaml
    echo "  hash: ${hash_array[$h]}" >> $TEMP_DIR/recipes.yaml
done

cat $TEMP_DIR/recipes.yaml | mustache - $RECIPE_LIST_TEMPLATE > $BUILD_DIR/list.html