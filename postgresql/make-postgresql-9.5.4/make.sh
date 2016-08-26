#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

cd $BUILDDIRPATH
cd $SRCDIRNAME

export LD_LIBRARY_PATH=/usr/local/readline/readline-4.3/lib

make clean 2>&1 | tee $DIRPATH/make-clean.txt | grep -i error
make -j8 2>&1 | tee $DIRPATH/make.txt | grep -i error

