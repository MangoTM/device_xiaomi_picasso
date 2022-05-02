#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)
#$(call inherit-product, vendor/gms/products/gms.mk)

# Inherit some common syberia  stuff.
$(call inherit-product, vendor/syberia/common.mk)

$(call inherit-product, vendor/xiaomi/google/google.mk)

SELINUX_IGNORE_NEVERALLOWS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := syberia_picasso
PRODUCT_DEVICE := picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_BUILD_GRAPHENEOS_CAMERA := true

TARGET_SUPPORTS_QUICK_TAP := true


TARGET_BOOT_ANIMATION_RES := 1080
WITH_GMS := true
