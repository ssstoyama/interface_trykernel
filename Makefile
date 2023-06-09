SOURCE_DIR:=part_2/sect_4

.PHONY: all
all:
	make -C $(SOURCE_DIR)
	mkdir -p build
	submodules/elf2uf2/elf2uf2 $(SOURCE_DIR)/build/kernel.elf build/kernel.uf2

.PHONY: clean
clean:
	rm -f build/*
	make -C $(SOURCE_DIR) clean
