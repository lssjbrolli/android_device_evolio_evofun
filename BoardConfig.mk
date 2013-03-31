TARGET_BOARD_PLATFORM := sun4i

#CPU stuff
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := crane
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=3
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

#BOARD_HAS_SDCARD_INTERNAL := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/allwinner/evofun/kernel
BOARD_USES_UBOOT := true

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/allwinner/evofun/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
TARGET_RECOVERY_INITRC := device/allwinner/evofun/recovery_init.rc

#Misc stuff
TARGET_RECOVERY_PRE_COMMAND := "echo -n boot-recovery | busybox dd of=/dev/block/nandf count=1 conv=sync; sync"
TARGET_PROVIDES_INIT_RC := true
TARGET_HARDWARE_INCLUDE := $(TOP)/device/allwinner/evofun/libraries/include
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/allwinner/evofun/releasetools/907_ota_from_target_files
COMMON_GLOBAL_CFLAGS += "-DICS_CAMERA_BLOB -DICS_AUDIO_BLOB"
BOARD_HAVE_BLUETOOTH := false
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/allwinner/evofun/vibrator.c
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true


#EGL stuff
BOARD_EGL_CFG := device/allwinner/evofun/egl.cfg
BOARD_USE_GPU := true
ENABLE_WEBGL := true
USE_OPENGL_RENDERER := true
BOARD_USE_SKIA_LCDTEXT := true

#camera
USE_CAMERA_STUB := false
BOARD_CAMERA_HAVE_FLASH := false

#audio
#BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_AUDIO_LEGACY := true
#BOARD_USES_ALSA_AUDIO := false

#sensors
SW_BOARD_USES_GSENSOR_TYPE := mma7660
SW_BOARD_GSENSOR_DIRECT_X := true 
SW_BOARD_GSENSOR_DIRECT_Y := true
SW_BOARD_GSENSOR_DIRECT_Z := true
SW_BOARD_GSENSOR_XY_REVERT := false 

# Wifi stuff
BOARD_WIFI_VENDOR := realtek
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER             := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_rtl

BOARD_WLAN_DEVICE                := rtl8192cu

WIFI_DRIVER_MODULE_PATH          := "/system/vendor/modules/8192cu.ko"
WIFI_DRIVER_MODULE_NAME          := 8192cu

#TARGET_CUSTOM_WIFI := libraries/wlan/wifi_realtek.c