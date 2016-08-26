#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

cd $BUILDDIRPATH
cd $SRCDIRNAME

sudo make install 2>&1 | tee $DIRPATH/make-install.txt | grep -i error

