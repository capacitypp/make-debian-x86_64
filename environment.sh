DIRPATH=`pwd`
DIRNAME=${DIRPATH##*/}
PARENTDIRPATH=${DIRPATH%/*}
SRCDIRNAME=${DIRNAME#make-}
SRCDIRPATH=$PARENTDIRPATH/$SRCDIRNAME
TOOLNAME=${SRCDIRNAME%-*}
VERSION=${SRCDIRNAME##*-}
VERSION=${VERSION//./}
DSTDIRNAME=$SRCDIRNAME
PREFIX=/usr/local/$TOOLNAME/$DSTDIRNAME
BUILDDIRNAME=build
BUILDDIRPATH=$DIRPATH/$BUILDDIRNAME

