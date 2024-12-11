# Asus ROG Strix G814JI OpenCore

**Current macOS version:**

**Current OpenCore version:** 1.0.3

## Components

| **Component** | **Model**                                                   |
| ------------- | ----------------------------------------------------------- |
| CPU           | 13th Gen Intel(R) Core(TM) i9-13980HX                       |
| Chipset       | Intel HM770 (Raptor Lake-S PCH)                             |
| RAM           | 16GB DDR5 4800MHz                                           |
| iGPU          | Intel(R) UHD Graphics                                       |
| GPU           | NVIDIA GeForce RTX 4070 Laptop GPU                          |
| Audio         | Realtek High Definition Audio                               |
| Ethernet      | Realtek PCIe GbE Family Controller                          |
| Wireless      | Intel(R) Wi-Fi 6E AX211 160MHz                              |
| Storage       | WD PC SN560 SDDPNQE-1T00-1002 (1TB PCIe® 4.0 NVMe™ M.2 SSD) |
| Trackpad      | I2C HID                                                     |

## What works

CPU	- 13th Gen Intel(R) Core(TM) i9-13980HX

iGPU - Intel(R) UHD Graphics (Modified NootedBlue. Only 15MB video memory, no acceleration)

Ethernet - Realtek PCIe GbE Family Controller

Wireless - Intel(R) Wi-Fi 6E AX211 160MHz

Storage - WD PC SN560 SDDPNQE-1T00-1002

Trackpad - I2C HID (Modified VoodooI2C. Polling mode only)

## What doesn't work (yet)

GPU - NVIDIA GeForce RTX 4070 Laptop GPU

Audio - Realtek High Definition Audio

## Configuration
### Kexts