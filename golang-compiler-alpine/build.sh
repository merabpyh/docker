#!/bin/bash

# USR/REPO is a your github repo
USR=XXX
REPO=XXX

# DUSR/DREPO is a your dockerhub repo
DUSR=$USR
DREPO=XXX

# For option -v HOSTdir:CONTdir
INDIR=$(pwd)/output
OUTDIR=/mnt/output

#echo "Create output dir"
mkdir ./output

#echo "Build image"
docker build -t $DUSR/$DREPO:latest .

#echo "Run container"
docker run \
	-v $INDIR:$OUTDIR \
	-e USR=$USR \
	-e REPO=$REPO \
	--rm $DUSR/$DREPO:latest 

