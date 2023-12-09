#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD2048 device
$(call inherit-product, device/vivo/PD2048/device.mk)

PRODUCT_DEVICE := PD2048
PRODUCT_NAME := twrp_PD2048
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2048A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6875v1_64-user 12 SP1A.210812.003 compiler07201611 release-keys"

BUILD_FINGERPRINT := vivo/PD2048/PD2048:12/SP1A.210812.003/compiler07201611:user/release-keys