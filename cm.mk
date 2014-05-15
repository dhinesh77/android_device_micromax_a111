## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a111

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/micromax/a111/device_a111.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a111
PRODUCT_NAME := cm_a111
PRODUCT_BRAND := micromax
PRODUCT_MODEL := a111
PRODUCT_MANUFACTURER := micromax
