#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

rm -r -f $BUILDDIRPATH
mkdir $BUILDDIRPATH
cd $BUILDDIRPATH
cp -R $SRCDIRPATH .
patch -u -p0 < $DIRPATH/$SRCDIRNAME.patch
cd $SRCDIRNAME

./configure --prefix=$PREFIX 2>&1 | tee $DIRPATH/configure.txt | grep -i error
#cd $PARENTDIRPATH
#patch -u -p0 -R < $DIRPATH/$SRCDIRNAME.patch

