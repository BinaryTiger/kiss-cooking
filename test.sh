#!/bin/bash

DATA_DIR=./data

# Compile each file and exit on error
for f in "$DATA_DIR"/*.dhall; do
    dhall-to-yaml-ng --file $f

    if [ $? -eq 0 ]; then
        echo OK
    else
        exit 1
    fi
done