# Include the base products AndroidBoard.mk
ifeq ($(KERNEL_DEFCONFIG),)
     ifeq ($(TARGET_BUILD_VARIANT),user)
          KERNEL_DEFCONFIG := vendor/bengal_2w_v2-perf_defconfig
     else
          KERNEL_DEFCONFIG := vendor/bengal_2w_v2_defconfig
     endif
endif
include device/qcom/bengal_2w/AndroidBoard.mk
