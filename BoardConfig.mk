# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# Broadcom specific config
-include device/htc/msm8660-common/bcmdhd.mk

# inherit from the proprietary version
#-include vendor/htc/shooter/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/htc/shooter/include

TARGET_BOOTLOADER_BOARD_NAME := shooter

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooter

#Ril
BOARD_USE_NEW_LIBRIL_HTC := true

#COMMON_GLOBAL_CFLAGS += -DBOARD_HAVE_SQN_WIMAX
#BOARD_HAVE_SQN_WIMAX := true

# Kernel Details
TARGET_KERNEL_CONFIG := shooter_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooter no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048

# Kernel
TARGET_KERNEL_SOURCE   := kernel/htc/shooteru

#ION
TARGET_USES_ION := true

# Camera
BOARD_HTC_3D_SUPPORT := true

# Bootanimation
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/shooter

# Vendor Init
#TARGET_INIT_VENDOR_LIB := libinit_msm
#TARGET_LIBINIT_DEFINES_FILE := device/htc/shooter/init/init_shooter.c
#TARGET_UNIFIED_DEVICE := true

# cat /proc/emmc
#dev:        size     erasesize name
# mmcblk0p17: 00040000 00000200 "misc"
# mmcblk0p22: 00fffc00 00000200 "recovery"
# mmcblk0p21: 01000000 00000200 "boot"
# mmcblk0p23: 31fffc00 00000200 "system"
# mmcblk0p32: 00140200 00000200 "local"
# mmcblk0p25: 06ebde00 00000200 "cache"
# mmcblk0p24: 4aabc400 00000200 "userdata"
# mmcblk0p28: 01400000 00000200 "devlog"
# mmcblk0p30: 00040000 00000200 "pdata"
# mmcblk0p18: 02800000 00000200 "radio"
# mmcblk0p19: 007ffa00 00000200 "radio_config"
# mmcblk0p26: 00400000 00000200 "modem_st1"
# mmcblk0p27: 00400000 00000200 "modem_st2"
# mmcblk0p8:  00c00200 00000200 "wimax"
# mmcblk0p33: 007ffa00 00000200 "udata_wimax"


BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192

# Custom lun file path
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_HAS_NO_MISC_PARTITION := true

TARGET_RECOVERY_FSTAB := device/htc/shooter/ramdisk/fstab.shooter
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_shooter
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/shooteru/recovery/graphics.c
BOARD_RECOVERY_SWIPE := true

#Philz
TARGET_COMMON_NAME := HTC EVO 3D CDMA
