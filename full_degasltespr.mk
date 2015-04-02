# DEGASLTESPR SM-T237P

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := degasltespr
PRODUCT_DEVICE := degasltespr
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T237P

$(call inherit-product, device/samsung/degasltespr/device.mk)
$(call inherit-product-if-exists, vendor/samsung/degasltespr/degasltespr-vendor.mk)
