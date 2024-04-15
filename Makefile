BUS ?= mmio
ARCH ?= x86_64
MODE ?= release
LOG ?= warn
NET_DEV ?= user

#Path
OUT_DIR ?= ./build
OUT_ELF := $(OUT_DIR)/kernel.elf
OUT_BIN := $(OUT_DIR)/kernel.bin

OBJDUMP ?= rust-objdump -d --print-imm-hex --x86-asm-syntax=intel
OBJCOPY ?= rust-objcopy --binary-architecture=$(ARCH)

ifeq ($(ARCH), x86_64)
	BUS := pci
endif


all:build

include scripts/make/qemu.mk


build: $(OUT_BIN)
