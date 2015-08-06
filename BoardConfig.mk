#
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
#

# Architecture and CPU
TARGET_BOARD_PLATFORM := mt6582
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

#neon cflags for cortex-a7
TARGET_GLOBAL_CFLAGS   += -mcpu=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mcpu=cortex-a7 -mfpu=neon -mfloat-abi=softfp

#user image is ext4
TARGET_USERIMAGES_USE_EXT4:=true

# EGL settings
BOARD_EGL_CFG := device/lge/h324/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

TARGET_BOOTLOADER_BOARD_NAME := h324
TARGET_OTA_ASSERT_DEVICE := leon,h324,lge_h324

# Kernel
TARGET_KERNEL_CONFIG := muse6582_y50_l_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/h324
TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-4.9-14.06/bin/arm-linux-gnueabihf-


