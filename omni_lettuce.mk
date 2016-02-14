## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := YUPHORIA

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/yu/lettuce/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lettuce
PRODUCT_NAME := omni_lettuce
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5010
PRODUCT_MANUFACTURER := YU
BOARD_VENDOR := yu

TARGET_VENDOR_PRODUCT_NAME := YUPHORIA
TARGET_VENDOR_DEVICE_NAME := YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA

ADDITIONAL_BUILD_PROPERTIES += \
	ro.product.device=YUPHORIA \
	ro.build.product=YUPHORIA \
