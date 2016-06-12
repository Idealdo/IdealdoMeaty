#!/bin/sh
set -e
. ./iso.sh

#qemu-system-$(./target-triplet-to-arch.sh $HOST) -cdrom myos.iso # from the original tutorial
qemu-system-$(./target-triplet-to-arch.sh $HOST) -kernel kernel/myos.kernel
