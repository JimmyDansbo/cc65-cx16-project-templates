#!/bin/bash

rm -rf MAIN.PRG maina.o

#Build assembly helper-functions
ca65 -t cx16 -o maina.o main.asm
#Build and link main program
cl65 -t cx16 \
     -m main.map -Ln main.sym -o MAIN.PRG \
     main.c maina.o
