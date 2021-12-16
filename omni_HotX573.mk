#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Omni stuff.
 $(call inherit-product, vendor/pb/config/common.mk)

#  PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root,recovery/root)
#	$(LOCAL_PATH)/prebuilt/dtb:dtb.img
 
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := HotX573
PRODUCT_NAME := omni_HotX573
PRODUCT_BRAND := X573
PRODUCT_MODEL := Hot S 3
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

# Dynamic Partition
 PRODUCT_USE_DYNAMIC_PARTITIONS := true

# PRODUCT_SHIPPING_API_LEVEL := 30    

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000
    