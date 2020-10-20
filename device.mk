#
# Copyright (C) 2019-2020 The LineageOS Project
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

# Inherit from msm8917-common
$(call inherit-product, device/samsung/msm8917-common/msm8917.mk)

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/A13QL_s5k3l6xx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/A13QL_s5k3l6xx_module_info.xml \
    $(LOCAL_PATH)/camera/P08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/P08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/camera/Q08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Q08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/camera/R05QL_s5k5e9yx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/R05QL_s5k5e9yx_module_info.xml \
    $(LOCAL_PATH)/camera/sdm450_camera_j6primelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sdm450_camera_j6primelte.xml \
    $(LOCAL_PATH)/camera/Z08QL_s5k4hayx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Z08QL_s5k4hayx_module_info.xml

# Fingerprint
#PRODUCT_PACKAGES += \
#    fingerprint.msm8937

PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.samsung
	
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Soong
PRODUCT_SOONG_NAMESPACES += \
    device/samsung/j6primelte

# Inherit vendor
$(call inherit-product, vendor/samsung/j6primelte/j6primelte-vendor.mk)