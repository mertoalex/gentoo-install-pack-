#!/usr/bin/bash
pwd=$(dirname ${BASH_SOURCE[0]})
rootfs="$pwd/rootfs"

mount	--types proc /proc $rootfs/proc

mount	--rbind	/sys	$rootfs/sys
mount	--make-rslave	$rootfs/sys
mount	--rbind	/dev	$rootfs/dev
mount	--make-rslave	$rootfs/dev
mount	--bind	/run	$rootfs/run
mount	--make-slave	$rootfs/run