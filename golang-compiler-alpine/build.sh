#!/bin/bash

# Run from the directory with Dockerfile

#echo "Create output dir"
if [ ! -d "output" ]; then mkdir output; fi

#echo "Build image"
docker build -t alpine.go.compiler:latest .
