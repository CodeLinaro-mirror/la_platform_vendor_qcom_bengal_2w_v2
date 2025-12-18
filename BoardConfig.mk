# Kernel modules install path
KERNEL_MODULES_INSTALL := dlkm
KERNEL_MODULES_OUT := out/target/product/bengal_2w_v2/$(KERNEL_MODULES_INSTALL)/lib/modules

include device/qcom/bengal_2w/BoardConfig.mk

BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/qti-uart-can.ko

TARGET_ARCH := arm64
TARGET_2ND_ARCH := arm
