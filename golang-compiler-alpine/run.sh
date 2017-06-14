#!/bin/bash

# Run from the directory with Dockerfile

# Check arg
if [ "$#" -ne 1 ]
then
  echo "Usage: ./run.sh USER/REPO"
  echo "Use the \"/\" symbol in argument"
  exit 1
fi

# USR/REPO is a your github repo
USR=$(echo $1 | awk -F/ '{print $1}')
REPO=$(echo $1 | awk -F/ '{print $2}')

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
#	--rm $USR/$DREPO:latest
	--rm $DREPO:latest
  
