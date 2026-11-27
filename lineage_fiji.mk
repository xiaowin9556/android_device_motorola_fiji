# Inherit device configuration
$(call inherit-product, device/motorola/fiji/fiji.mk)

# Inherit common LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identity
PRODUCT_DEVICE := fiji
PRODUCT_NAME := lineage_fiji
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto e6s
PRODUCT_MANUFACTURER := MOTOROLA MOBILITY LIMITED
PRODUCT_SHIPPING_API_LEVEL := 28

# The stock vendor image was built for Android 9 / VNDK 28.
PRODUCT_EXTRA_VNDK_VERSIONS += 28

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fiji-user 9 POES29.288-60-6-1-15 66fed:user/release-keys"

BUILD_FINGERPRINT := motorola/fiji_64/fiji:9/POES29.288-60-6-1-15/66fed:user/release-keys
