#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

rm -r -f $BUILDDIRPATH
mkdir $BUILDDIRPATH
cd $BUILDDIRPATH
cp -R $SRCDIRPATH .
patch -u -p0 < $DIRPATH/$SRCDIRNAME.patch
cd $SRCDIRNAME

export LDFLAGS=-L/usr/local/readline/readline-4.3/lib
export LD_LIBRARY_PATH=/usr/local/readline/readline-4.3/lib

./configure --prefix=$PREFIX 2>&1 --with-includes=/usr/local/readline/readline-4.3/include --with-libraries=/usr/local/readline/readline-4.3/lib | tee $DIRPATH/configure.txt | grep -i error
#cd $PARENTDIRPATH
#patch -u -p0 -R < $DIRPATH/$SRCDIRNAME.patch

