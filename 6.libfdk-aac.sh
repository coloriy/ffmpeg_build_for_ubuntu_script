#!/bin/bash
HOME=$(cd `dirname $0`; pwd)

git clone --depth 1 https://github.com/mstorsjo/fdk-aac && \
        cd fdk-aac && \
        autoreconf -fiv && \
        ./configure --prefix="$HOME/../ffmpeg_build" --disable-shared && \
        make && \
        make install
