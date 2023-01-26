#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/fuxi

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Configure virtual_ab compression.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure updatable_apex.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Configure developer_gsi_keys.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier
PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133C
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# riceDroid Flags
RICE_CHIPSET := Snapdragon-888-Gen2
RICE_OFFICIAL := false

# Sushi Bootanimation (only 720/1080/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 1080

# Graphene Camera
#TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := false

# GMS build flags, if none were defined the package build type will be AOSP (default: false)
WITH_GMS := true

# Customized GMS Flags 
TARGET_GAPPS_ARCH := arm64

# Opt out of google dialer support, compiler will build aosp dialer,
TARGET_OPTOUT_GOOGLE_TELEPHONY := false

# Quick Tap 
TARGET_SUPPORTS_QUICK_TAP := true

#Face unlock 
TARGET_FACE_UNLOCK_SUPPORTED := true

# Maintainer Stuff
RICE_MAINTAINER := zinger