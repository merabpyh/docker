#!/bin/sh

#echo "Getting repo $USR/$REPO"
go get github.com/$USR/$REPO

#echo "Build binary"
go build -o ./$REPO -ldflags '-s' ./src/github.com/$USR/$REPO

#echo "Put binary"
cp ./$REPO /mnt/output/$REPO 
