#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit Target Product stuff
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit some common Omni stuff.
 $(call inherit-product, vendor/twrp/config/common.mk)


# PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/infinic/HotX573/recovery/root,recovery/root)
# $(LOCAL_PATH)/prebuilt/dtb:dtb.img
 
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := HotX573
PRODUCT_NAME := twrp_HotX573
PRODUCT_BRAND := X573
PRODUCT_MODEL := Hot S 3
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

# HACK: Set vendor patch level
# PRODUCT_PROPERTY_OVERRIDES += \
#    ro.build.date.utc=1230768000
