#!/bin/bash

export PATH=$(pwd)/tmp/bin:$PATH
mkdir -p build/sdl_mixer
rm -rf build/SDL2_mixer-2.6.3
tar xf SDL2_mixer-2.6.3.tar.gz -C build

cmake -B build/sdl_mixer build/SDL2_mixer-2.6.3 -DCMAKE_PREFIX_PATH=tmp \
  -DSDL2MIXER_FLAC=OFF -DSDL2MIXER_MOD=OFF -DSDL2MIXER_MIDI=OFF \
  -DSDL2MIXER_OPUS=OFF -DSDL2MIXER_MP3_DRMP3=ON -DSDL2MIXER_VORBIS_STB=ON
cmake --build build/sdl_mixer --parallel
cmake --install build/sdl_mixer --prefix tmp
