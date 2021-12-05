#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$ {call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$ (call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$ (call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$ (call inherit-product, vendor/twrp/config/common.mk)
# $(call inherit-product, vendor/twrp/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X573
PRODUCT_NAME := twrp_X573
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot S 3
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000
    
# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd   

# Verity 
PRODUCT_SUPPORTS_BOOT_SIGNER := true
PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity




