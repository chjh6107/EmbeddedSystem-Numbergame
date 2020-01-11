.SILENT:

include C:/AndroXStudio/Tools/make_adb

export ARCH=arm
export CROSS_COMPILE=arm-linux-androideabi-

ifneq ($(KERNELRELEASE),)
obj-m := fpga_segment_cjh.o
else
KDIR := /platform/linux
all:
	$(MAKE) -C $(KDIR) M=$(shell pwd) modules

	echo 
	echo "**** Install:" /system/lib/modules/fpga_segment_cjh.ko "****"
	$(ADB) push fpga_segment_cjh.ko /system/lib/modules/
	$(ADB) shell chmod 644 /system/lib/modules/fpga_segment_cjh.ko
	echo 
	echo "**** Load Module:" /system/lib/modules/fpga_segment_cjh.ko "****"
	$(ADB) shell toolbox rmmod fpga_segment_cjh > /dev/null
	$(ADB) shell insmod /system/lib/modules/fpga_segment_cjh.ko
	$(ADB) shell lsmod | grep fpga_segment_cjh
	echo

endif

clean:
	rm -f *.symvers
	rm -f *.ko
	rm -f *.o
	rm -f *.mod.c
	rm -f *.order
	rm -f .*.cmd
	rm -rf .tmp_versions
