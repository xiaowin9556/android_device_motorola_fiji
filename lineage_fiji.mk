
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
PRODUCT_SHIPPING_API_LEVEL := 28

# Stock identity from the supplied POES29.288-60-6-1-15 package
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fiji-user 9 POES29.288-60-6-1-15 66fed:user/release-keys"

BUILD_FINGERPRINT := motorola/fiji_64/fiji:9/POES29.288-60-6-1-15/66fed:user/release-keys
