#!/bin/bash

HOME=$(cd `dirname $0`; pwd)

git clone --depth 1 https://aomedia.googlesource.com/aom && \
        mkdir aom_build && \
        cd aom_build && \
        PATH="$HOME/bin:$PATH" cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg_build" -DENABLE_SHARED=off -DENABLE_NASM=on ../aom && \
        PATH="$HOME/bin:$PATH" make && \
        make install
