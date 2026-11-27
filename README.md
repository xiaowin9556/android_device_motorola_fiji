# Moto e6s (fiji) device tree

Bring-up copy for LineageOS 22.2 / Android 15, based on the public tree at
https://github.com/refrigerador67/android_device_motorola_fiji and adapted for the
Motorola stock build POES29.288-60-6-1-15.

## Current status

- Corrected the kernel target to ARM64 and Motorola's fiji_64_defconfig.
- Removed the stale prebuilt zImage-dtb; no kernel binary or proprietary vendor blobs are stored here.
- Corrected stale Infinix OTA assertions and proprietary makefile vendor/device names.
- Added slot selection and product to the recovery fstab using the stock partition map.
- Added .github/workflows/build-fiji-kernel.yml to build only the official Motorola kernel and attach outputs to a manually started Actions run.

This is an early bring-up tree, not a boot-tested Android 15 port. The stock is Android 9 with Linux 4.9.117; kernel compatibility work and vendor interface validation are still required. The stock recovery fstab's exact F2FS encryption flags must be checked against the supplied firmware before relying on /data decryption. The proprietary-file list is incomplete and must be extracted from the stock images; do not commit proprietary blobs.

## Kernel source

The matching source branch is MotorolaMobilityLLC/kernel-mtk, branch Pie-9-release-POES. The expected repo path is kernel/motorola/fiji.
