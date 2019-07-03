#! /bin/sh

export GOPATH=/home/rwtxt/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

cd /home/rwtxt/rwtxt
make prereq
make quick
mkdir -p /home/rwtxt/bin
cp cmd/rwtxt/rwtxt /home/rwtxt/bin
