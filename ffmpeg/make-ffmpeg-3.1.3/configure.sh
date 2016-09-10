#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

rm -r -f $BUILDDIRPATH
mkdir $BUILDDIRPATH
cd $BUILDDIRPATH

#cp -R $SRCDIRPATH .
#patch -u -p0 < $DIRPATH/$SRCDIRNAME.patch

#cd $SRCDIRNAME

#PATH=$PATH:/usr/local/flex/flex-2.5.4/bin
#export PATH
#export LD_LIBRARY_PATH=/usr/local/readline/readline-4.3/lib

$SRCDIRPATH/configure --prefix=$PREFIX 2>&1 --enable-libmp3lame | tee $DIRPATH/configure.txt | grep -i error

