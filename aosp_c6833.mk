# Copyright 2014 The Android Open Source Project
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

TARGET_KERNEL_CONFIG := aosp_rhine_togari_defconfig
#TARGET_KERNEL_CONFIG := ubuntu_rhine_togari_defconfig
TARGET_KERNEL_SOURCE := kernel/sony/msm
TARGET_KERNEL_USES_DTB := true


# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/togari/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_c6833
PRODUCT_DEVICE := togari
PRODUCT_MODEL := Xperia Z Ultra (Ubuntu)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

# Ubuntu Overlay Files
PRODUCT_COPY_FILES += \
    device/sony/togari/ubuntu/udev.rules:system/ubuntu/lib/udev/rules.d/70-android.rules \
    device/sony/togari/ubuntu/display.conf:system/ubuntu/etc/ubuntu-touch-session.d/android.conf \
    device/sony/togari/ubuntu/powerd-config.xml:system/ubuntu/usr/share/powerd/device_configs/config-default.xml
