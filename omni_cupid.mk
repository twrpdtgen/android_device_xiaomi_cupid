#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

PRODUCT_DEVICE := cupid
PRODUCT_NAME := omni_cupid
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201123G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cupid_eea-user 12 SKQ1.230401.001 V816.0.16.0.ULCEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/cupid_eea/cupid:12/SKQ1.230401.001/V816.0.16.0.ULCEUXM:user/release-keys
