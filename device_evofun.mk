PRODUCT_COPY_FILES := \
	device/allwinner/evofun/init.rc:root/init.rc \
	device/allwinner/evofun/initlogo.rle:root/initlogo.rle \
	device/allwinner/evofun/ueventd.rc:root/ueventd.rc \
	device/allwinner/evofun/modules/nand.ko:root/nand.ko \
	device/allwinner/evofun/modules/sun4i-keyboard.ko:root/sun4i-keyboard.ko

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise
	
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.root_access=3 \
	ro.opengles.version = 131072 \
	debug.egl.hw=1 \
	ro.secure=0 \
	ro.sf.lcd_density=120 \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	persist.sys.language=en \
	persist.sys.country=US \
	ro.com.google.locationfeatures=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.stack-trace-file=/data/anr/traces.txt \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-data-only=1 \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false \
	persist.sys.usb.config=adb \
	debug.sf.hw=1 \
	video.accelerate.hw=1 \
	ro.display.switch=1 \
	usb.audio.out.device=pcmC2D0p \
	usb.audio.cap.device=pcmC0D0c \
	ro.carrier=wifi-only 
	
include frameworks/native/build/tablet-dalvik-heap.mk
	
DEVICE_PACKAGE_OVERLAYS := device/allwinner/evofun/overlay
	
# Permissions
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml 

# EXT4 Support
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck \
	setup_fs
	
# Hardware support
PRODUCT_PACKAGES += \
	audio.primary.sun4i \
	audio_policy.default \
	audio.a2dp.default \
	audio.usb.default \
	display.sun4i \
	gralloc.sun4i \
	hwcomposer.sun4i \
	lights.sun4i \
	power.sun4i \
	sensors.sun4i \
	setrecovery \
	libCedarA \
	libCedarX \
	libcedarv \
	libcedarxbase \
	libcedarxosal \
	libcedarxsftdemux \
	libswdrm \
	libcedarv_adapter \
	libve \
	libfacedetection \
	libaw_audio \
	libaw_audioa \
	libcedarv_base \
	libstagefright_soft_cedar_h264dec \
	librtmp \
	rild \
	com.android.future.usb.accessory \
	librs_jni 

TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800 
 
PRODUCT_NAME := full_evofun
PRODUCT_DEVICE := evofun
