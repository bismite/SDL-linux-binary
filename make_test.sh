#!/bin/bash

clang -Wall -Itmp/include -Ltmp/lib -lSDL2 -lSDL2_mixer -lSDL2_image \
  test.c -o test -Wl,-rpath=\$ORIGIN/tmp/lib
