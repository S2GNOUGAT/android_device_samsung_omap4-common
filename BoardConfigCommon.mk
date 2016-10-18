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

# Inherit common omap4 board config
-include hardware/ti/omap4/BoardConfigCommon.mk

COMMON_PATH := device/samsung/omap4-common
BOARD_VENDOR := samsung
TARGET_POWERHAL_VARIANT := samsung
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Dex Pre-opt
# WITH_DEXPREOPT := true

# Use dlmalloc
MALLOC_IMPL := dlmalloc
TARGET_NEEDS_TEXT_RELOCATIONS := true

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6260
BOARD_RIL_CLASS := ../../../device/samsung/omap4-common/ril
COMMON_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/omap4-common/sepolicy

# inherit from the proprietary version
-include vendor/samsung/omap4-common/BoardConfigVendor.mk
