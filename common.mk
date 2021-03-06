#
# Copyright (C) 2013 The CyanogenMod Project
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

# Set CPU
TARGET_BOARD_OMAP_CPU := 4430

# Include common omap4 makefile
$(call inherit-product, hardware/ti/omap4/omap4.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

COMMON_PATH := device/samsung/omap4-common

DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

# Omap4 Packages
PRODUCT_PACKAGES += \
    libedid

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libtinyalsa \
    libaudioutils \
    libnetcmdiface \
    tinyplay \
    tinycap \
    tinymix

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# RIL
PRODUCT_PACKAGES += \
    libsamsung_symbols \
    libsecril-client \
    ril-wrapper

# Misc S2
PRODUCT_PACKAGES += \
    librs_jni \
    libxml2 \
    com.android.future.usb.accessory \
    SamsungServiceMode

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungOmap4RIL \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    camera2.portability.force_api=1
#    com.ti.omap_enhancement=true \
#    omap.enhancement=true \

# Include non-opensource parts
$(call inherit-product, vendor/samsung/omap4-common/common-vendor.mk)
