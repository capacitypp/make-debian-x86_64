#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

cd $BUILDDIRPATH
cd $SRCDIRNAME

make clean 2>&1 | tee $DIRPATH/make-clean.txt | grep -i error
make 2>&1 | tee $DIRPATH/make.txt | grep -i error

