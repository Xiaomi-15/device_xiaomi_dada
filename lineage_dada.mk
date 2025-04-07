#
# Copyright (C) 2025 The Android Open-Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/dada/device.mk)

PRODUCT_NAME := lineage_dada
PRODUCT_DEVICE := dada
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24129PN74G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 15 AQ3A.240812.002 OS2.0.102.0.VOCIDXM release-keys" \
    BuildFingerprint=Xiaomi/dada_global/dada:15/AQ3A.240812.002/OS2.0.102.0.VOCIDXM:user/release-keys \
    DeviceName=dada \
    DeviceProduct=24129PN74G \
    SystemDevice=dada \
    SystemName=24129PN74G

#Flags
PRODUCT_NO_CAMERA := false
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
