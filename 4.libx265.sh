#!/bin/bash

HOME=$(cd `dirname $0`; pwd)

hg clone https://bitbucket.org/multicoreware/x265
cd x265/build/linux && \
       PATH="$HOME/../bin:$PATH" cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/../ffmpeg_build" -DENABLE_SHARED=off ../../source && \
       PATH="$HOME/../bin:$PATH" make && \
       make install

