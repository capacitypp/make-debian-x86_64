#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

rm -r -f $BUILDDIRPATH
mkdir $BUILDDIRPATH
cd $BUILDDIRPATH
cp -R $SRCDIRPATH $BUILDDIRPATH
#patch -u -p0 < $DIRPATH/$SRCDIRNAME.patch
cd $SRCDIRNAME

#export LD_LIBRARY_PATH=/usr/local/readline/readline-4.3/lib

./configure --prefix=$PREFIX --with-apr=/usr/local/apr/apr-1.5.2 2>&1 | tee $DIRPATH/configure.txt | grep -i error

