#!/bin/sh

set -e

VERSION=$2
SOURCE=$(dpkg-parsechangelog | sed -ne 's,Source: \(.*\),\1,p')

DIR=jacksum
TAR=../${SOURCE}_${VERSION}.orig.tar.gz

[ -e jacksum ] || mkdir $DIR
unzip -d $DIR $3
tar -c -z -f $TAR $DIR
rm -rf $DIR $3
