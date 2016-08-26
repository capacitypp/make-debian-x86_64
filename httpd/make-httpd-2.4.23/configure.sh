#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

rm -r -f $BUILDDIRPATH
mkdir $BUILDDIRPATH
cd $BUILDDIRPATH
#cp -R $SRCDIRPATH $BUILDDIRPATH
#patch -u -p0 < $DIRPATH/$SRCDIRNAME.patch
#cd $SRCDIRNAME

bash $SRCDIRPATH/configure --prefix=$PREFIX --enable-so --with-apr=/usr/local/apr/apr-1.5.2 --with-apr-util=/usr/local/apr-util/apr-util-1.5.4 2>&1 | tee $DIRPATH/configure.txt | grep -i error

