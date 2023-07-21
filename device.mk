#
# Copyright (C) 2022 The OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Enable project quotas and casefolding for emulated storage without sdcardfs
# $(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enable virtual A/B OTA
# ENABLE_VIRTUAL_AB := true
# $(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Device Path
LOCAL_PATH := device/infinix/X573

# Dynamic Partition
# PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_SHIPPING_API_LEVEL := 28 

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000

# otacert
# PRODUCT_EXTRA_RECOVERY_KEYS += \
#    $(DEVICE_PATH)/security/X573_releasekey 

# Verity 
# PRODUCT_SUPPORTS_BOOT_SIGNER := true
# PRODUCT_SUPPORTS_VERITY := true
# PRODUCT_SUPPORTS_VERITY_FEC := true
# PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/
# PRODUCT_PACKAGES += \
#             verity_key

