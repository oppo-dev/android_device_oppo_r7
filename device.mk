#
# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := device/oppo/r7

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product-if-exists, vendor/oppo/r7/r7-vendor.mk)

# Inherit from msm8939-common
$(call inherit-product, device/oppo/msm8939-common/msm8939.mk)

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml

# ACDB Loader calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdbdata/Bluetooth_cal.acdb:system/etc/acdbdata/15011/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/General_cal.acdb:system/etc/acdbdata/15011/General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Global_cal.acdb:system/etc/acdbdata/15011/Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Handset_cal.acdb:system/etc/acdbdata/15011/Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Hdmi_cal.acdb:system/etc/acdbdata/15011/Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Headset_cal.acdb:system/etc/acdbdata/15011/Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Speaker_cal.acdb:system/etc/acdbdata/15011/Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/WorkspaceFile.qwsp:system/etc/acdbdata/15011/WorkspaceFile.qwsp \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_General_cal.acdb:system/etc/acdbdata/QRD/QRD_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Global_cal.acdb:system/etc/acdbdata/QRD/QRD_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Handset_cal.acdb:system/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Hdmi_cal.acdb:system/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Headset_cal.acdb:system/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Speaker_cal.acdb:system/etc/acdbdata/QRD/QRD_Speaker_cal.acdb

# Input configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl
