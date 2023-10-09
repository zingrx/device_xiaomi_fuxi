#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common RisingOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Inherit from Gapps
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

## ROM Flags
TARGET_BOOT_ANIMATION_RES := 1080
ALPHA_MAINTAINER := Zinger
WITH_GAPPS := true
ALPHA_BUILD_TYPE := Unofficial
TARGET_DEFAULT_ADB_ENABLED := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_PREBUILT_GCAM := false
TARGET_PREBUILT_PIXEL_LAUNCHER := false
TARGET_USE_PIXEL_FINGERPRINT := false

## Device identifier
PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := 2211133G
PRODUCT_SYSTEM_DEVICE := 2211133G

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fuxi_global-user 13 TKQ1.220905.001 V14.0.9.0.TMCMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/fuxi_global/fuxi:13/TKQ1.220905.001/V14.0.9.0.TMCMIXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
