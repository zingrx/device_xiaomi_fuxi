#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Inherit LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133C
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:15/AQ3A.240912.001/OS2.0.213.0.VMCCNXM:user/release-keys

# Device Flags
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := true

# Prebuilts
INCLUDE_PREBUILTS := true

# AxionOS 
WITH_GMS := true
TARGET_INCLUDE_GOOGLE_TELECOMM := true
TARGET_INCLUDE_PARTNER_SETUP := true
TARGET_INCLUDE_AXFX := true
AXION_MAINTAINER := 🔻neural0x🔻
AXION_CAMERA_REAR_INFO := 50,10,12
AXION_CAMERA_FRONT_INFO := 32
AXION_PROCESSOR := Snapdragon_8_Gen_2
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/max_brightness