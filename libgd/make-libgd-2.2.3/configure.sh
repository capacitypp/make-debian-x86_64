#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

rm -r -f $BUILDDIRPATH
mkdir $BUILDDIRPATH
cd $BUILDDIRPATH
#cp -R $SRCDIRPATH .
#patch -u -p0 < $DIRPATH/$SRCDIRNAME.patch
#cd $SRCDIRNAME

$SRCDIRPATH/configure --prefix=$PREFIX 2>&1 --with-zlib=/usr/local/zlib/zlib-1.2.8 --with-png --with-freetype --with-fontconfig | tee $DIRPATH/configure.txt | grep -i error
#cd $PARENTDIRPATH
#patch -u -p0 -R < $DIRPATH/$SRCDIRNAME.patch

