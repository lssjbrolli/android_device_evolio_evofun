# Release name
PRODUCT_RELEASE_NAME := EvoFun

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/evofun/full_evofun.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := evofun
PRODUCT_NAME := cm_evofun
PRODUCT_BRAND := Evolio
PRODUCT_MODEL := EvoFun
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=evofun BUILD_FINGERPRINT="allwinner/evofun/evofun:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="evofun-user 4.0.4 IMM76I 330937 release-keys"
