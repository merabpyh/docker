#!/bin/bash

# Run from the directory with Dockerfile

if [ "$#" -ne 2 ]
then
  echo "Usage: ./build.sh \"USER\" \"REPO without user\""
  echo "Like: ./build.sh merabpyh checker-client"
  echo "Be careful, do not use special characters in the user or repo name"
  exit 1
fi

# USR/REPO is a your github repo
USR=$1
REPO=$2

# USR/DREPO is a your dockerhub repo
DREPO=alpine.go.compiler

# For option -v HOSTdir:CONTdir
INDIR=$(pwd)/output
OUTDIR=/mnt/output

#echo "Create output dir"
mkdir ./output

#echo "Build image"
docker build -t $USR/$DREPO:latest .

#echo "Run container"
docker run \
	-v $INDIR:$OUTDIR \
	-e USR=$USR \
	-e REPO=$REPO \
	--rm $USR/$DREPO:latest 

