#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

rm -r -f $BUILDDIRPATH
mkdir $BUILDDIRPATH
cd $BUILDDIRPATH

cp -R $SRCDIRPATH .
patch -u -p0 < $DIRPATH/$SRCDIRNAME.patch

cd $SRCDIRNAME

PATH=$PATH:/usr/local/flex/flex-2.5.4/bin
export PATH

#./configure --prefix=$PREFIX 2>&1 --with-apxs=/usr/local/apache/apache-1.3.42/bin/apxs --with-png-dir=/usr/local/libpng/libpng-1.2.6 --with-gd=/usr/local/libgd/libgd-2.0.33 --with-zlib-dir=/usr/local/zlib/zlib-1.2.3 --with-pgsql=/usr/local/postgresql/postgresql-7.3 --with-libxml-dir=/usr/local/libxml2/libxml2-2.5.10 | tee $DIRPATH/configure.txt | grep -i error
./configure --prefix=$PREFIX 2>&1 --with-apxs=/usr/local/apache/apache-1.3.42/bin/apxs --with-pgsql=/usr/local/postgresql/postgresql-7.3 --with-libxml-dir=/usr/local/libxml2/libxml2-2.5.10 | tee $DIRPATH/configure.txt | grep -i error

