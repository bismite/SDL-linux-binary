#!/bin/bash

(
cd tmp ;
tar -ch -f SDL-linux-binary.tgz include \
  lib/libSDL2-2.0.so.0 lib/libSDL2_image-2.0.so.0 lib/libSDL2_mixer-2.0.so.0
)
