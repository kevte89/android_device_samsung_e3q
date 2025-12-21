#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/samsung/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/e3q

# Assert
TARGET_OTA_ASSERT_DEVICE := e3q

# Display
TARGET_SCREEN_DENSITY := 600

# Kernel
TARGET_KERNEL_CONFIG := oem/e3q_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include the proprietary files BoardConfig.
include vendor/samsung/e3q/BoardConfigVendor.mk
