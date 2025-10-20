# Asus ROG Strix G814JI OpenCore

**Current macOS version:** Ventura (13)

**Current OpenCore version:** 1.0.3

**BIOS Version:** 331

**GOP Version:** 17.0.1081

**EC Version:** G814JIEC.051

## Components

| **Component** | **Model**                                                   |
| ------------- | ----------------------------------------------------------- |
| CPU           | 13th Gen Intel(R) Core(TM) i9-13980HX                       |
| Chipset       | Intel HM770 (Raptor Lake-S PCH)                             |
| RAM           | 16GB DDR5 4800MHz                                           |
| iGPU          | Intel(R) UHD Graphics                                       |
| GPU           | NVIDIA GeForce RTX 4070 Laptop GPU (\_SB.PC00.PEG1.PEGP)                         |
| Audio         | Realtek High Definition Audio                               |
| Ethernet      | Realtek PCIe GbE Family Controller                          |
| Wireless      | Intel(R) Wi-Fi 6E AX211 160MHz                              |
| Storage       | WD PC SN560 SDDPNQE-1T00-1002 (1TB PCIe® 4.0 NVMe™ M.2 SSD) |
| Trackpad      | I2C HID                                                     |

## What works

CPU	- 13th Gen Intel(R) Core(TM) i9-13980HX

iGPU - Intel(R) UHD Graphics (NootedBlue with proper Raptor Lake device ID 0xA788)

Ethernet - Realtek PCIe GbE Family Controller

Wireless - Intel(R) Wi-Fi 6E AX211 160MHz

Storage - WD PC SN560 SDDPNQE-1T00-1002

Trackpad - I2C HID (Modified VoodooI2C. Polling mode only)

## What doesn't work (yet)

GPU - NVIDIA GeForce RTX 4070 Laptop GPU

Audio - Realtek High Definition Audio

## Configuration
### Graphics Setup

This laptop uses Intel Raptor Lake iGPU (UHD Graphics, device ID 0xA788) which requires **NootedBlue** kext for proper hardware acceleration in macOS.

**Important Notes:**
- **WhateverGreen is disabled** - It conflicts with NootedBlue for Raptor Lake iGPU support
- **NootedBlue is enabled** - Provides proper support for Intel 13th Gen integrated graphics
- The NVIDIA RTX 4070 dGPU is disabled via DeviceProperties as it's not supported in macOS
- Boot arguments have been cleaned to remove conflicting flags (`-wegnoegpu`, `-igfxvesa`, `-igfxonln=1`)

**DeviceProperties Configuration:**
- iGPU at `PciRoot(0x0)/Pci(0x2,0x0)` with proper framebuffer ID
- dGPU at `PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)` is disabled

### Bios settings
Advanced\ErP - Disabled

Advanced\Hyper-Threading - Enabled

Advanced\Intel Virtualization Technology - Enabled

Advanced\Intel AES-NI - Enabled

Advanced\VT-d - Enabled

Advanced\VMD Setup menu\Enable VMD Controller - Disabled

Boot\Fast Boot - Disabled

### ACPI
### Kexts

**Graphics Kexts:**
- **Lilu.kext** - Required by NootedBlue
- **NootedBlue.kext** - Enabled for Raptor Lake iGPU support (device ID 0xA788)
- **WhateverGreen.kext** - Disabled (conflicts with NootedBlue for Raptor Lake)

**Other Kexts:**
- VirtualSMC and plugins for hardware monitoring
- VoodooI2C for trackpad support
- AirportItlwm for WiFi (Intel AX211)
- RealtekRTL8111 for Ethernet
- AppleALC for audio (currently disabled)
- USBToolBox for USB port mapping