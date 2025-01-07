#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

## Device identifier
PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := 2211133G
PRODUCT_SYSTEM_DEVICE := 2211133G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "fuxi-user 13 TKQ1.221114.001 OS2.3.0.VMCCNXM release-keys")

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:13/TKQ1.221114.001/OS2.0.3.0.VMCCNXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# ROM FLAGS
RISING_MAINTAINER="🔻Zinger🔻"
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon® 8 Gen 2" \
    RisingMaintainer="🔻Zinger🔻"

WITH_GMS := true
PRODUCT_NO_CAMERA := false
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_PREBUILT_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_BCR := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# PREBUILTS 
INCLUDE_PREBUILTS := true