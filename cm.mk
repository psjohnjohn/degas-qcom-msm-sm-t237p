# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Inherit some common stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/degasltespr/full_degasltespr.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_degasltespr
