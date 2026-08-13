#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# --- Auto-resolve Git LFS for proprietary firmware ---
# This executes instantly during the makefile parsing phase,
# which happens immediately after roomservice completes its sync.
_lfs_pull := $(shell \
    MODEM="vendor/xiaomi/fuxi/radio/modem.img"; \
    if [ -f "$$MODEM" ]; then \
        if [ $$(stat -c%s "$$MODEM" 2>/dev/null || echo 0) -lt 1000000 ]; then \
            echo "Jenkins/AOSP: Pulling missing LFS blobs for fuxi..."; \
            cd vendor/xiaomi/fuxi && \
            git config lfs.url "https://github.com/MistOS-Devices/vendor_xiaomi_fuxi.git/info/lfs" && \
            git lfs pull; \
        fi; \
    fi \
)

# --- Auto-merge MiuiCamera Split APKs ---
_camera_merge := $(shell \
    APK_DIR="vendor/xiaomi/camera/proprietary/system/priv-app/MiuiCamera"; \
    if [ -d "$$APK_DIR" ] && [ ! -f "$$APK_DIR/MiuiCamera.apk" ]; then \
        cat $$APK_DIR/MiuiCamera.apk.part* > $$APK_DIR/MiuiCamera.apk 2>/dev/null; \
        echo "SUCCESS"; \
    fi \
)

# Force printing to the Jenkins console log when a merge occurs
ifeq ($(_camera_merge),SUCCESS)
    $(info [MistOS-CI] Successfully merged MiuiCamera split APK parts!)
endif

DEVICE_PATH := device/xiaomi/fuxi

# Inherit from sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
BOOT_KERNEL_MODULES += \
	fts_touch_spi.ko

BOARD_VENDOR_KERNEL_MODULES_LOAD += \
	cs35l41_dlkm.ko \
	goodix_fod.ko \
	fts_touch_spi.ko

# OTA
TARGET_OTA_ASSERT_DEVICE := fuxi

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

include vendor/xiaomi/fuxi/BoardConfigVendor.mk
