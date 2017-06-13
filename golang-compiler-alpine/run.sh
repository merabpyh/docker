#!/bin/bash

# Run from the directory with Dockerfile

if [ "$#" -ne 2 ]
then
  echo "Usage: ./run.sh \"USER\" \"REPO without user\""
  echo "Like: ./run.sh merabpyh checker-client"
  echo "Be careful, do not use special characters in the user or repo name"
  exit 1
fi

# USR/REPO is a your github repo
USR=$1
REPO=$2

# USR/DREPO is a your dockerhub repo
DREPO=alpine.go.compiler

#echo "Create output dir"
if [ ! -d "output" ]; then mkdir output; fi

# For option -v HOSTdir:CONTdir
INDIR=$(pwd)/output
OUTDIR=/mnt/output

#echo "Run container"
docker run \
	-v $INDIR:$OUTDIR \
	-e USR=$USR \
	-e REPO=$REPO \
	--rm $USR/$DREPO:latest
  
