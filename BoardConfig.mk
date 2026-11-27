-include device/motorola/fiji/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/fiji

# Board
# TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
TARGET_KERNEL_SOURCE := kernel/motorola/fiji
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CONFIG := fiji_64_defconfig

# OTA
TARGET_OTA_ASSERT_DEVICE := fiji
