#!/bin/sh

VERSION=0.9.1

BASEDIR=$(dirname $0)/..
DIST_DIR=$BASEDIR/dist

[ -d $DIST_DIR ] || mkdir $DIST_DIR

COPYFILE_DISABLE=1 tar cvJf $DIST_DIR/asciidoctorj-pkg-$VERSION.tar.xz \
    -C $BASEDIR/.. \
    --exclude-from=$DIST_DIR/.dist-exclude \
    asciidoctorj

(cd $BASEDIR/.. && \
zip -9 \
    - \
    asciidoctorj \
    `tar tf asciidoctorj/$DIST_DIR/asciidoctorj-pkg-$VERSION.tar.xz` \
) > $DIST_DIR/asciidoctorj-pkg-$VERSION.zip
