#!/bin/bash

HOME=$(cd `dirname $0`; pwd)

cd ffmpeg && \
PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" \
PATH="$HOME/bin:$PATH" \
make clean && \
hash -r
