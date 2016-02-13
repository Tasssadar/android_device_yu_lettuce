$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, vendor/yu/lettuce/lenok-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/yu/lettuce/overlay

LOCAL_PATH := device/yu/lettuce
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.lettuce:root/fstab.lettuce \
    $(LOCAL_PATH)/init.recovery.qcom.rc:root/init.recovery.qcom.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_lettuce
PRODUCT_DEVICE := YUPHORIA
