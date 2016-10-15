#!/bin/bash
set -e

apt-get update

apt-get -y install git mercurial ant build-essential openjdk-8-jdk
apt-get -y build-dep openjdk-8-jdk
cd /build/repo/
bash ./configure --enable-debug
make all
make install
