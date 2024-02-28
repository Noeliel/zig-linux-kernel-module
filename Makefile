# SPDX-FileCopyrightText: 2024 Noeliel
#
# SPDX-License-Identifier: GPL-2.0-only

ifneq ($(KERNELRELEASE),)
# kbuild part of makefile

%.o: %.zig
	cd ${PWD}/src && \
	zig build-obj \
		-fPIC \
		-Drelease=true \
		-O ReleaseSmall \
		-I"minimal-include" \
		$<

obj-m := hellozig.o
hellozig-y := src/hellokernelfromzig.o

else
# normal makefile
KDIR ?= /lib/modules/`uname -r`/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD modules

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

endif
