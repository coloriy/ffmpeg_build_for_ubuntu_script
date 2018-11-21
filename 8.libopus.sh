#!/bin/bash

HOME=$(cd `dirname $0`; pwd)

git clone --depth 1 https://github.com/xiph/opus.git && \
      cd opus && \
      ./autogen.sh && \
      ./configure --prefix="$HOME/ffmpeg_build" --disable-shared && \
      make && \
      make install
