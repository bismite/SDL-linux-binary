#!/bin/bash

PREFIX="$(pwd)/tmp"
mkdir -p build/sdl_image
rm -rf build/SDL2_image-2.6.3
tar xf SDL2_image-2.6.3.tar.gz -C build

# cmake -B build/sdl_image build/SDL2_image-2.6.3 -DCMAKE_PREFIX_PATH=tmp \
#   -DSDL2IMAGE_PNG=ON -DSDL2IMAGE_BACKEND_STB=ON \
#   -DSDL2IMAGE_AVIF=OFF -DSDL2IMAGE_BMP=OFF -DSDL2IMAGE_GIF=OFF -DSDL2IMAGE_JPG=OFF \
#   -DSDL2IMAGE_JXL=OFF -DSDL2IMAGE_LBM=OFF -DSDL2IMAGE_PCX=OFF -DSDL2IMAGE_PNM=OFF \
#   -DSDL2IMAGE_QOI=OFF -DSDL2IMAGE_SVG=OFF -DSDL2IMAGE_TGA=OFF -DSDL2IMAGE_TIF=OFF \
#   -DSDL2IMAGE_WEBP=OFF -DSDL2IMAGE_XCF=OFF -DSDL2IMAGE_XPM=OFF -DSDL2IMAGE_XV=OFF
cmake -B build/sdl_image build/SDL2_image-2.6.3 -DCMAKE_PREFIX_PATH=tmp \
  -DSDL2IMAGE_BACKEND_STB=ON -DSDL2IMAGE_PNG=ON -DSDL2IMAGE_JPG=ON \
  -DSDL2IMAGE_TIF=OFF -DSDL2IMAGE_WEBP=OFF -DSDL2IMAGE_JXL=OFF -DSDL2IMAGE_AVIF=OFF
cmake --build build/sdl_image --parallel
cmake --install build/sdl_image --prefix tmp