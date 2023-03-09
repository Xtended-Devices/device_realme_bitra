#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Elixir stuff
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xtended_bitra
PRODUCT_DEVICE := bitra
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme GT Neo 2
PRODUCT_MANUFACTURER := Realme

PRODUCT_SYSTEM_NAME := RMX3370
PRODUCT_SYSTEM_DEVICE := RE879AL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 13 TP1A.220905.001 1673279364946 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3370/RE879AL1:13/TP1A.220905.001/R.d6d4af-1-1e:user/release-keys
PRODUCT_OVERRIDE_GMS_FINGERPRINT := google/redfin/redfin:13/TQ1A.221205.011/9244662:user/release-keys

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Xtended Stuffs
XTENDED_BUILD_MAINTAINER := Andreock
XTENDED_BUILD_TYPE := OFFICIAL
XTENDED_BUILD_DONATE_URL := https://paypal.me/AlbertoCanale
PROCESSOR_MODEL := sm8250
