obj-m += keyboard_count.o

all:
	make -C $(HOME)/kernel/vroot/lib/modules/6.13.2/build M=$(PWD) modules
clean:
	make -C $(HOME)/kernel/vroot/lib/modules/6.13.2/build M=$(PWD) clean