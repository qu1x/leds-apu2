ifndef KERNELRELEASE
KERNELRELEASE := $(shell uname -r)
endif
ifndef KDIR
KDIR := /lib/modules/$(KERNELRELEASE)/build
endif

ifndef MDIR
MDIR := kernel/drivers/leds
endif

obj-m := leds-apu2.o

default:
	$(MAKE) -C $(KDIR) M=$$PWD modules

install:
	$(MAKE) -C $(KDIR) M=$$PWD modules_install INSTALL_MOD_DIR=$(MDIR)
	depmod

uninstall:
	rm -f $(dir $(KDIR))$(MDIR)/$(obj-m:.o=.ko)
	depmod

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

.PHONY: default install uninstall clean

Makefile:;
