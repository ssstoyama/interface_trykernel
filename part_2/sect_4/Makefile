TARGETS:= application/main.c \
					boot/boot2.c boot/reset_hdr.c boot/vector_tbl.c \
					kernel/syslib.c

.PHONY: all
all:
	arm-none-eabi-gcc -I include -T linker/pico_memmap.ld -mcpu=cortex-m0plus -O0 -nostartfiles -o build/kernel.elf $(TARGETS)
	# zig cc -target thumb-v6-freestanding-none -I include -T linker/pico_memmap.ld -mcpu=cortex_m0plus -O0 -o build/kernel.elf $(TARGETS)

.PHONY: clean
clean:
	rm -rf build/*
