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

# Inherit from Gapps
$(call inherit-product-if-exists, vendor/google/gms/config.mk)
WITH_GMS := true

## Device identifier
PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := 2211133G
PRODUCT_SYSTEM_DEVICE := 2211133G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "fuxi 15 AQ3A.240912.001 OS2.0.3.0.VMCCNXM user release-keys")

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:15/AQ3A.240912.001/OS2.0.3.0.VMCCNXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

AXION_MAINTAINER := 🔻Zinger🔻
AXION_PROCESSOR := Snapdragon_8_Gen_2_(4nm)
WITH_GMS := true
AXION_CAMERA_REAR_INFO := 50+10+12
AXION_CAMERA_FRONT_INFO := 32
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_VIPERFX := true
BYPASS_CHARGE_SUPPORTED := true