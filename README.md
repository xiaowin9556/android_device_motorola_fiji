# Moto e6s (fiji) device tree

Bring-up copy for LineageOS 22.2 / Android 15, based on the public tree at
https://github.com/refrigerador67/android_device_motorola_fiji and adapted for the
Motorola stock build POES29.288-60-6-1-15.

## Current status

- Product target is `lineage_fiji`, with stock Android 9 build identity and shipping API level.
- The product includes generated proprietary modules from `vendor/motorola/fiji/fiji-vendor.mk` when blobs are extracted locally.
- Blob extraction uses the LineageOS Python extract-utils interface; `extract-files.sh` and `setup-makefiles.sh` remain compatibility wrappers.
- VNDK 28 is requested for compatibility with the Android 9 stock vendor image.
- Kernel target is ARM64 with Motorola's `fiji_64_defconfig`.
- The stale prebuilt zImage-dtb was omitted; this repository has no kernel binary or proprietary vendor blobs.
- Recovery fstab follows stock slot selection, product, F2FS and AES-256-XTS settings.
- The GitHub Actions workflow is manual-dispatch and kernel-only; it does not build the ROM.

This is an early bring-up tree, not a boot-tested Android 15 port. The stock is Android 9 with Linux 4.9.117; Android 15 kernel compatibility work, vendor interface validation, SELinux policy, and a complete proprietary-file list remain. Do not treat a kernel workflow artifact as a flashable boot image.

## Kernel source

Motorola source: https://github.com/MotorolaMobilityLLC/kernel-mtk/tree/Pie-9-release-POES
The local manifest snippet in manifests/fiji-kernel.xml places it at kernel/motorola/fiji.
