#!/bin/bash

rm -rf /usr/local/go*
rm -rf /usr/local/go

VERSION=1.18
OS=linux
ARCH=amd64

cd $HOME
rm go$VERSION.$OS-$ARCH.tar.gz
wget https://storage.googleapis.com/golang/go$VERSION.$OS-$ARCH.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
echo "done copy go$VERSION to /usr/local"