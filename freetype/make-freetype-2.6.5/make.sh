#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

cd $BUILDDIRPATH
#cd $SRCDIRNAME

#export LD_LIBRARY_PATH=/usr/local/libpng/libpng-1.2.6/lib
#export LDFLAGS=-L/usr/local/libpng/libpng-1.2.6/lib

make clean 2>&1 | tee $DIRPATH/make-clean.txt | grep -i error
make 2>&1 | tee $DIRPATH/make.txt | grep -i error

