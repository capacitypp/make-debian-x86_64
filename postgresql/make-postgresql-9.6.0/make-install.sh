#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

cd $BUILDDIRPATH
cd $SRCDIRNAME

sudo env LD_LIBRARY_PATH=/usr/local/readline/readline-4.3/lib make install 2>&1 | tee $DIRPATH/make-install.txt | grep -i error

