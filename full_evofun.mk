$(call inherit-product, build/target/product/generic_no_telephony.mk)
$(call inherit-product, build/target/product/languages_small.mk)
$(call inherit-product, vendor/cm/config/common.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
$(call inherit-product, device/allwinner/evofun/hardware/Android.mk)
$(call inherit-product, device/allwinner/evofun/device_evofun.mk)
$(call inherit-product, device/allwinner/evofun/evofun_blobs.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := evofun
PRODUCT_DEVICE := evofun
PRODUCT_NAME := full_evofun
PRODUCT_BRAND := allwinner
PRODUCT_MODEL := evofun
PRODUCT_MANUFACTURER := allwinner
