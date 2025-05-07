#!/bin/bash
#Vendor Setup Script
echo "Setting up repositories for Redmi 12 5G / Poco M6 Pro 5G (sky)..."

# Clone BCR repository
echo "Cloning BCR repository..."
rm -rf vendor/bcr && git clone https://github.com/xiaomi-sm4450-sky/vendor_bcr.git vendor/bcr

# Clone the kernel source
echo "Cloning kernel repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_xiaomi_sky_kernel.git -b 16.0 device/xiaomi/sky-kernel

# Clone the vendor source
echo "Cloning vendor repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_vendor_xiaomi_sky.git -b 16.0 vendor/xiaomi/sky

# Clone the firmware source
echo "Cloning firmware repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_vendor_xiaomi_sky-firmware.git -b OS2.0.9.0.VMWEUXM vendor/xiaomi/sky-firmware

# Clone the dolby repository
echo "Cloning dolby hardware repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_hardware_dolby.git -b 16 hardware/dolby

# Clone the hardware repository
echo "Cloning hardware repository..."
git clone https://github.com/Evolution-X-Devices/hardware_xiaomi.git -b bka hardware/xiaomi
rm -rf hardware/xiaomi/dolby

echo "Setup complete. Repositories are ready."

echo "Completed, proceeding to lunch"
