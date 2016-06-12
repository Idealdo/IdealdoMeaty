#!/bin/sh
set -e
. ./headers.sh

# For using my cross compiler
export PATH="/usr/local/cross/bin/:$PATH"

for PROJECT in $PROJECTS; do
  DESTDIR="$PWD/sysroot" $MAKE -C $PROJECT install
done
