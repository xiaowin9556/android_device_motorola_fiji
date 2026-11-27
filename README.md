# Moto e6s (fiji) device tree

Bring-up copy for LineageOS 22.2 / Android 15, based on the public tree at
https://github.com/refrigerador67/android_device_motorola_fiji and adapted for the
Motorola stock build POES29.288-60-6-1-15.

## Current status

- Kernel target is ARM64 with Motorola's fiji_64_defconfig.
- The stale prebuilt zImage-dtb was omitted; this repository has no kernel binary or proprietary vendor blobs.
- Infinix OTA assertions and vendor makefile names were corrected for Motorola fiji.
- Recovery fstab now follows stock slot selection, product, F2FS and AES-256-XTS settings.
- The manually started GitHub Actions workflow builds only the official Motorola kernel.

This is an early bring-up tree, not a boot-tested Android 15 port. The stock is Android 9 with Linux 4.9.117; Android 15 kernel compatibility work, vendor interface validation, SELinux policy, and a complete proprietary-file list remain. Do not treat the workflow artifact as a flashable boot image.

## Kernel source

Motorola source: https://github.com/MotorolaMobilityLLC/kernel-mtk/tree/Pie-9-release-POES
The local manifest snippet in manifests/fiji-kernel.xml places it at kernel/motorola/fiji.
