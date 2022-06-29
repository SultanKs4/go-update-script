#!/bin/bash

rm -rf /usr/local/go*

VERSION=1.18.3
OS=$(uname | awk '{print tolower($0)}')
ARCH=$(uname -m | awk '{print tolower($0)}')

case $ARCH in
    x86_64)
        ARCH="amd64"
        ;;
    x86)
        ARCH="386"
        ;;
    aarch64)
        ARCH="arm64"
        ;;
esac

cd $HOME
rm go$VERSION.$OS-$ARCH.tar.gz
wget https://storage.googleapis.com/golang/go$VERSION.$OS-$ARCH.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
echo "done copy go$VERSION to /usr/local"