#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Omni stuff.
 $(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root) \
#	$(LOCAL_PATH)/prebuilt/dtb:dtb.img
 
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := HotX573
PRODUCT_NAME := twrp_HotX573
PRODUCT_BRAND := infinix
PRODUCT_MODEL := Hot S 3
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED
