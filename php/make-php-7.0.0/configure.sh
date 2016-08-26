#!/bin/bash

source ../../environment.sh
echo "prefix : "$PREFIX

rm -r -f $BUILDDIRPATH
mkdir $BUILDDIRPATH
cd $BUILDDIRPATH

cp -R $SRCDIRPATH .
#patch -u -p0 < $DIRPATH/$SRCDIRNAME.patch

cd $SRCDIRNAME

PATH=$PATH:/usr/local/flex/flex-2.5.4/bin
export PATH
export LD_LIBRARY_PATH=/usr/local/readline/readline-4.3/lib

#./configure --prefix=$PREFIX 2>&1 --with-apxs=/usr/local/apache/apache-1.3.42/bin/apxs --with-gd=/usr/local/libgd/libgd-2.2.3 --with-png-dir=/usr/local/libpng/libpng-1.6.24 --with-zlib-dir=/usr/local/zlib/zlib-1.2.8 --with-pgsql=/usr/local/postgresql/postgresql-7.3 --with-libxml-dir=/usr/local/libxml2/libxml2-2.6.20 | tee $DIRPATH/configure.txt | grep -i error
./configure --prefix=$PREFIX 2>&1 --with-apxs2=/usr/local/httpd/httpd-2.4.10/bin/apxs --with-gd --with-png-dir=/usr/local/libpng/libpng-1.6.24 --with-zlib-dir=/usr/local/zlib/zlib-1.2.8 --with-pgsql=/usr/local/postgresql/postgresql-9.1.0 --with-libxml-dir=/usr/local/libxml2/libxml2-2.6.20 | tee $DIRPATH/configure.txt | grep -i error
#./configure --prefix=$PREFIX 2>&1 --with-apxs=/usr/local/apache/apache-1.3.42/bin/apxs --with-pgsql=/usr/local/postgresql/postgresql-7.3 --with-libxml-dir=/usr/local/libxml2/libxml2-2.6.20 | tee $DIRPATH/configure.txt | grep -i error

