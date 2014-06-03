$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/micromax/a111/a111-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/micromax/a111/overlay

LOCAL_PATH := device/micromax/a111
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#This blobs are not needed but still copying..
# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/rmt_storage_recovery:recovery/root/rmt_storage_recovery \
    $(LOCAL_PATH)/recovery/ueventd.rc:root/ueventd.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_a111
PRODUCT_DEVICE := a111
