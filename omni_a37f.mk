#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a37f
PRODUCT_NAME := full_a37f
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := A37f
PRODUCT_MANUFACTURER := OPPO
PRODUCT_NAME := omni_a37f

# TWRP RECOVERY
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/recovery/root/fstab.goldfish:recovery/root/fstab.goldfish \
    $(LOCAL_PATH)/recovery/root/init.goldfish.rc:recovery/root/init.goldfish.rc \
    $(LOCAL_PATH)/recovery/root/init.oppo.rc:recovery/root/init.oppo.rc \
    $(LOCAL_PATH)/recovery/root/init.oppo.init.rc:recovery/root/init.oppo.init.rc \
    $(LOCAL_PATH)/recovery/root/init.oppo.usb.rc:recovery/root/init.oppo.usb.rc \
    $(LOCAL_PATH)/recovery/root/init.oppo.debug.rc:recovery/root/init.oppo.debug.rc \
    $(LOCAL_PATH)/recovery/root/init.qcom.rc:recovery/root/init.qcom.rc \
    $(LOCAL_PATH)/recovery/root/init.qcom.sh:recovery/root/init.qcom.sh \
    $(LOCAL_PATH)/recovery/root/init.usb.rc:recovery/root/init.usb.rc \
    $(LOCAL_PATH)/recovery/root/init.target.rc:recovery/root/init.target.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.goldfish.rc:recovery/root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.qcom.rc:recovery/root/ueventd.qcom.rc \

# SELinux
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/sepolicy:recovery/root/sepolicy \
    $(LOCAL_PATH)/recovery/root/sepolicy_debug:recovery/root/sepolicy_debug
