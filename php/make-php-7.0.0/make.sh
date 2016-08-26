#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

cd $BUILDDIRPATH
cd $SRCDIRNAME

PATH=$PATH:/usr/local/bison/bison-1.875/bin:/usr/local/flex/flex-2.5.4/bin
export PATH
#export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu

make clean 2>&1 | tee $DIRPATH/make-clean.txt | grep -i error
make -j8 2>&1 | tee $DIRPATH/make.txt | grep -i error

