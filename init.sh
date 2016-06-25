#!/bin/bash

: ${REPO:=https://github.com/igorpecovnik/lib.git}

if [ ! -d  ../lib ]; then
	git clone $REPO ../lib
fi

docker build -t 3mdeb/armbian .
cd ..
docker run -v ${PWD}/lib:/root/lib -t -i 3mdeb/armbian
