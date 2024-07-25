$(call inherit-product, device/qcom/bengal_2w/bengal_2w.mk)
PRODUCT_NAME := bengal_2w_v2
PRODUCT_DEVICE := bengal_2w_v2
PRODUCT_BRAND := qti
PRODUCT_MODEL := bengal_2w_v2 for arm64
TARGET_BOARD_SUFFIX := _2w
TARGET_BOARD_DERIVATIVE_SUFFIX := _v2
DEVICE_MANIFEST_FILE := device/qcom/bengal_2w/manifest.xml

# vendor properties to enable sim hotswap
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.radio.hotswap_enable = 1
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.radio.hotswap_polarity = 1

# Kernel modules install path
#KERNEL_MODULES_INSTALL := dlkm
#KERNEL_MODULES_OUT := out/target/product/bengal_2w_v2/$(KERNEL_MODULES_INSTALL)/lib/modules
