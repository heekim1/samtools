#!/usr/bin/env bash

set -x

cd /checkout

tar xfj $NAME-$SAMTOOLS_VERSION.tar.bz2
cd samtools-$SAMTOOLS_VERSION
make
make install
