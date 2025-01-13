# Release name
PRODUCT_RELEASE_NAME := o1s

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/o1s/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/o1s/recovery/root,recovery/root)

PRODUCT_DEVICE := o1s
PRODUCT_NAME := twrp_o1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G991B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
