$(call inherit-product, device/qcom/bengal_2w/bengal_2w.mk)
PRODUCT_NAME := bengal_2w_v2
PRODUCT_DEVICE := bengal_2w_v2
PRODUCT_BRAND := qti
PRODUCT_MODEL := bengal_2w_v2 for arm64
TARGET_BOARD_SUFFIX := _2w
TARGET_BOARD_DERIVATIVE_SUFFIX := _v2
DEVICE_MANIFEST_FILE := device/qcom/bengal_2w/manifest.xml

# Kernel modules install path
#KERNEL_MODULES_INSTALL := dlkm
#KERNEL_MODULES_OUT := out/target/product/bengal_2w_v2/$(KERNEL_MODULES_INSTALL)/lib/modules

# Enable I2S Feature
PRODUCT_PROPERTY_OVERRIDES += vendor.i2s.enable=true

#Only enable adb-over-wifi on userdebug/eng builds
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
PRODUCT_PROPERTY_OVERRIDES += service.adb.tcp.port = 5555
endif

# Property for SKU2
PRODUCT_PROPERTY_OVERRIDES += vendor.sku2.enable=true

PRODUCT_PACKAGES += \
    init.qcom.QCC3086.rc \
    qccdadevd \
    key_file \
    nvscmd \
    coredump \
    libpttransport \
    libpttoolcmd \
    libhydprotocols \
    libengineframework \
    libcuratorlibrary

PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qccdadevd_restart=false

