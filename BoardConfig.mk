# Copyright (C) 2014 The CyanogenMod Project
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

USE_CAMERA_STUB := true

LOCAL_PATH := device/samsung/j13g

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOARD_PLATFORM_GPU := mali-400
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := sc7727s
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
BOARD_VENDOR := samsung

# Config u-boot
TARGET_NO_BOOTLOADER := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1090519040
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2445279232
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := j13g-dt_hw01_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j13g
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(LOCAL_PATH)/dt.img

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Board specific features
BOARD_USE_SAMSUNG_COLORFORMAT := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Assert
TARGET_OTA_ASSERT_DEVICE := j13g,j13gxx,J100H,SM-J100H

# Enable dex-preoptimization to speed up the first boot sequence
WITH_DEXPREOPT := true
#WITH_DEXPREOPT_BOOT_IMG_ONLY := true
WITH_DEXPREOPT_PIC := true
WITH_DEXPREOPT_COMP := false

RECOVERY_VARIANT := twrp
RECOVERY_GRAPHICS_USE_LINELENGTH := true
SP1_NAME := "internal_sd"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
#TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/sec/sec-thermistor/temperature"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TWHAVE_SELINUX := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
DEVICE_RESOLUTION := 480x800
TW_THEME := portrait_mdpi
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_SECONDARY_BRIGHTNESS_PATH := "/sys/devices/ktd2801-bl.29/backlight/panel/brightness"
#TW_DEFAULT_BRIGHTNESS := 50
#TW_MTP_DEVICE := /dev/usb_mtp_gadget
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_F2FS := true
TW_INCLUDE_FB2PNG := true

# UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/f5116000.usb/gadget/lun%d/file"

