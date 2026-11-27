
# Inherit from device
$(call inherit-product, device/motorola/fiji/fiji.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fiji
PRODUCT_NAME := lineage_fiji
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto e6s
PRODUCT_MANUFACTURER := MOTOROLA MOBILITY LIMITED

COMMON_LUNCH_CHOICES := lineage_fiji-userdebug
