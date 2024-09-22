#
# Copyright 2017 The Android Open Source Project
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

DEVICE_PATH := device/GIONEE/gionee6735_65c_l1

# Inherit something
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Device
PRODUCT_DEVICE := gionee6735_65c_l1
PRODUCT_NAME := omni_gionee6735_65c_l1
PRODUCT_BRAND := GIONEE
PRODUCT_MODEL := F100
PRODUCT_MANUFACTURER := GIONEE

# Prebuilt kernel
PRODUCT_COPY_FILES += $(DEVICE_PATH)/prebuilt/kernel:kernel

# Ramdisk
PRODUCT_PACKAGES += $(DEVICE_PATH)/recovery/root/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc
