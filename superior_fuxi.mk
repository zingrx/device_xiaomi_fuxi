#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common superiorOS configurations
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Inherit from Gapps
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier
PRODUCT_DEVICE := fuxi
PRODUCT_NAME := superior_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := Xiaomi13
PRODUCT_SYSTEM_DEVICE := Xiaomi13

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fuxi_global-user 13 TKQ1.220905.001 V14.0.7.0.TMCMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/fuxi_global/fuxi:13/TKQ1.220905.001/V14.0.7.0.TMCMIXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
