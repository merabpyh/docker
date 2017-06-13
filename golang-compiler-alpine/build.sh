#!/bin/bash

# Run from the directory with Dockerfile

if [ "$#" -ne 1 ]
then
  echo "Usage: ./build.sh REIGSTRY"
  exit 1
fi

# it's your dockerhub repo
USR=$1

#echo "Create output dir"
if [ ! -d "output" ]; then mkdir output; fi

#echo "Build image"
docker build -t $USR/alpine.go.compiler:latest .
