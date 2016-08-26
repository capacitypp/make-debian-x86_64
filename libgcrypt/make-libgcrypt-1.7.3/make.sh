#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

cd $BUILDDIRPATH
#cd $SRCDIRNAME

#export LD_LIBRARY_PATH=/usr/local/libgpg-error/libgpg-error-1.0/lib

make clean 2>&1 | tee $DIRPATH/make-clean.txt | grep -i error
make -j8 2>&1 | tee $DIRPATH/make.txt | grep -i error

