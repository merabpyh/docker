#!/bin/sh

# Full repo name
FREPO=$USR/$REPO

#echo "Get repo"
go get github.com/$FREPO

#echo "Build binary"
go build -o ./$REPO -ldflags '-s' ./src/github.com/$FREPO

#echo "Put binary"
cp ./$REPO /mnt/output/$REPO 
