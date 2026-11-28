LOCAL_PATH := device/motorola/fiji

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# GPS
PRODUCT_PACKAGES += \
    libcurl \
    libandroid_net

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Init
PRODUCT_PACKAGES += \
    init.target.rc

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Stock vendor mount-point symlinks
PRODUCT_PACKAGES += \
    vendor_elabel \
    vendor_nvcfg \
    vendor_nvdata \
    vendor_persist \
    vendor_product \
    vendor_protect_f \
    vendor_protect_s
