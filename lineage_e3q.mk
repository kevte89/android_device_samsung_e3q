#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from e3q device
$(call inherit-product, device/samsung/e3q/device.mk)

PRODUCT_DEVICE := e3q
PRODUCT_NAME := lineage_e3q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S928B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="e3qxxx-user 15 AP3A.240905.015.A2 S928BXXU4BYD9 release-keys" \
    BuildFingerprint="samsung/e3qxxx/e3q:14/UP1A.231005.007/S928BXXU4BYD9:user/release-keys"

# =========================
#  USB / MTP (PFICHT)
# =========================
PRODUCT_COPY_FILES += \
    vendor/samsung/e3q/proprietary/vendor/etc/init/hw/init.qcom.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.usb.rc \
    vendor/samsung/e3q/proprietary/vendor/etc/init/android.hardware.usb-service.qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.usb-service.qti.rc \
    vendor/samsung/e3q/proprietary/vendor/etc/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc \

# =========================
#  USB / MTP (OPTIONAL – nur wenn Quelle existiert)
# =========================
#PRODUCT_COPY_FILES += \
#    vendor/samsung/e3q/proprietary/system/etc/init/hw/init.usb.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/hw/init.usb.rc \
#    vendor/samsung/e3q/proprietary/system/etc/init/hw/init.usb.configfs.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/hw/init.usb.configfs.rc \
#    vendor/samsung/e3q/proprietary/system/etc/init/usbd.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/usbd.rc

# =========================
#  AUDIO – Policy / Volumes / Effects (PFICHT)
# =========================
PRODUCT_COPY_FILES += \
    vendor/samsung/e3q/proprietary/vendor/etc/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio_policy_configuration_base.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_base.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio_effects_haptic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_haptic.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio_effects_spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_spatializer.xml

# =========================
#  AUDIO – Mixer Paths (PFICHT: nur Zeilen behalten, die du wirklich kopiert hast)
# =========================
PRODUCT_COPY_FILES += \
    vendor/samsung/e3q/proprietary/vendor/etc/audio/sku_pineapple/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_pineapple/mixer_paths.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio/sku_pineapple/mixer_paths_pineapple_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_pineapple/mixer_paths_pineapple_cdp.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio/sku_pineapple/mixer_paths_pineapple_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_pineapple/mixer_paths_pineapple_mtp.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio/sku_pineapple/mixer_paths_pineapple_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_pineapple/mixer_paths_pineapple_qrd.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio/sku_pineapple/mixer_paths_pineapple_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_pineapple/mixer_paths_pineapple_qrd_sku2.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio/sku_cliffs/mixer_paths_cliffs_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cliffs/mixer_paths_cliffs_cdp.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio/sku_cliffs/mixer_paths_cliffs_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cliffs/mixer_paths_cliffs_mtp.xml \
    vendor/samsung/e3q/proprietary/vendor/etc/audio/sku_cliffs/mixer_paths_cliffs_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cliffs/mixer_paths_cliffs_qrd.xml

PRODUCT_PACKAGES += usbudev

