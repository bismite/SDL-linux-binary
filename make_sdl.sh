#!/bin/bash

PREFIX="$(pwd)/tmp"
mkdir -p build/sdl
rm -rf build/SDL2-2.26.3
tar xf SDL2-2.26.3.tar.gz -C build

cmake -B build/sdl build/SDL2-2.26.3/ -DCMAKE_PREFIX_PATH=tmp
cmake --build build/sdl --parallel
cmake --install build/sdl --prefix tmp
