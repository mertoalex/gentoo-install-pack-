#!/usr/bin/bash
pwd=$(dirname ${BASH_SOURCE[0]})
rootfs="$pwd/rootfs"

chroot $rootfs /bin/bash