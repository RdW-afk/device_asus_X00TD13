#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common bananaDroid stuff
$(call inherit-product, vendor/banana/config/common.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

#Official Stuff
BANANA_BUILD_TYPE := OFFICIAL
BANANA_MAINTAINER := Romeo_Delta_Whiskey
TARGET_FACE_UNLOCK_SUPPORTED := true

#Gapps
WITH_GAPPS := true
BUILD_CORE_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := banana_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ2A.230505.002 9891397 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/cheetah/cheetah:13/TQ2A.230505.002/9891397:user/release-keys"
