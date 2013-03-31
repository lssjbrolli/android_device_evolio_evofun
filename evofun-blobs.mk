# Copyright (C) 2012 The Android Open Source Project
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

# /system/bin
PRODUCT_COPY_FILES += \
#	device/allwinner/evofun/prebuilt/bin/fsck.exfat:system/bin/fsck.exfat \
#	device/allwinner/evofun/prebuilt/bin/mkfs.exfat:system/bin/mkfs.exfat \
#	device/allwinner/evofun/prebuilt/bin/mount.exfat:system/bin/mount.exfat \
#	device/allwinner/evofun/prebuilt/bin/ntfs-3g:system/bin/ntfs-3g \
#	device/allwinner/evofun/prebuilt/bin/ntfs-3g.probe:system/bin/ntfs-3g.probe \
#	device/allwinner/evofun/prebuilt/bin/mkntfs:system/bin/mkntfs \
	device/allwinner/evofun/prebuilt/bin/reboot-recovery.sh:system/bin/reboot-recovery.sh \
	device/allwinner/evofun/prebuilt/bin/usb_modeswitch:system/bin/usb_modeswitch \

# /system/etc
PRODUCT_COPY_FILES += \
#	device/allwinner/evofun/prebuilt/etc/ppp/ip-down:system/etc/ppp/ip-down \
#	device/allwinner/evofun/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up \
#	device/allwinner/evofun/prebuilt/etc/ppp/call-pppd:system/etc/ppp/call-pppd \
	device/allwinner/evofun/prebuilt/etc/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	device/allwinner/evofun/prebuilt/etc/camera.cfg:system/etc/camera.cfg \
	device/allwinner/evofun/prebuilt/etc/gps.conf:system/etc/gps.conf \
	device/allwinner/evofun/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/allwinner/evofun/prebuilt/etc/usb_modeswitch.sh:system/etc/usb_modeswitch.sh \
	device/allwinner/evofun/prebuilt/etc/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/allwinner/evofun/prebuilt/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d)

# /system/lib
PRODUCT_COPY_FILES += \
	device/allwinner/evofun/prebuilt/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	device/allwinner/evofun/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	device/allwinner/evofun/prebuilt/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	device/allwinner/evofun/prebuilt/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	device/allwinner/evofun/prebuilt/lib/liballwinner-ril.so:system/lib/liballwinner-ril.so \
	device/allwinner/evofun/prebuilt/lib/hw/gps.sun4i.so:system/lib/hw/gps.sun4i.so \
	device/allwinner/evofun/prebuilt/lib/libMali.so:system/lib/libMali.so \
	device/allwinner/evofun/prebuilt/lib/libUMP.so:system/lib/libUMP.so \
	device/allwinner/evofun/prebuilt/lib/libMali.so:obj/lib/libMali.so \
	device/allwinner/evofun/prebuilt/lib/libUMP.so:obj/lib/libUMP.so

# /system/usr
PRODUCT_COPY_FILES += \
	device/allwinner/evofun/prebuilt/usr/idc/ft5x_ts.idc:system/usr/idc/ft5x_ts.idc \
	device/allwinner/evofun/prebuilt/usr/keylayout/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
	device/allwinner/evofun/prebuilt/usr/keylayout/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl 

# prebuilt kernel modules
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/allwinner/evofun/prebuilt/vendor/modules,system/vendor/modules)
	
# HACK by turl: Create some intermediate files to link with libMali/libUMP
$(shell mkdir -p out/target/product/evofun/obj/SHARED_LIBRARIES/libMali_intermediates)
$(shell mkdir -p out/target/product/evofun/obj/SHARED_LIBRARIES/libUMP_intermediates)
$(shell touch out/target/product/evofun/obj/SHARED_LIBRARIES/libMali_intermediates/export_includes)
$(shell touch out/target/product/evofun/obj/SHARED_LIBRARIES/libUMP_intermediates/export_includes)

# OMX codec support
PRODUCT_COPY_FILES += device/allwinner/evofun/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# Audio policy
PRODUCT_COPY_FILES += device/allwinner/evofun/libraries/audio/audio_policy.conf:system/etc/audio_policy.conf
