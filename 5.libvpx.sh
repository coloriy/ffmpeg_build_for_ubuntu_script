#!/bin/bash

HOME=$(cd `dirname $0`; pwd)

git clone --depth 1 https://chromium.googlesource.com/webm/libvpx.git && \
        cd libvpx && \
        PATH="$HOME/bin:$PATH" ./configure --prefix="$HOME/ffmpeg_build" --disable-examples --disable-unit-tests --enable-vp9-highbitdepth --as=yasm && \
        PATH="$HOME/bin:$PATH" make && \
        make install

