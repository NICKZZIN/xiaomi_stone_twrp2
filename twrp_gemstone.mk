#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni/TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gemstone device
DEVICE_PATH := device/xiaomi/gemstone
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifier
PRODUCT_DEVICE := gemstone
PRODUCT_NAME := twrp_gemstone
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22111317G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Assert (Trazido do outro repositório - Evita o Erro 7 ao flashear ROMs)
TARGET_OTA_ASSERT_DEVICE := stone,gemstone,moonstone,sunstone

# Nota: As linhas de BUILD_FINGERPRINT do Android 14 foram removidas 
# para não quebrar a descriptografia FBE do Android 12.1 configurada no BoardConfig.
