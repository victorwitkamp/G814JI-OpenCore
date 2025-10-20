# Asus ROG Strix G814JI OpenCore

**Current macOS version:** Ventura (13)

**Current OpenCore version:** 1.0.5

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

iGPU - Intel(R) UHD Graphics (NootedBlue v1.0.0 with proper Raptor Lake device ID 0xA788)

Ethernet - Realtek PCIe GbE Family Controller

Wireless - Intel(R) Wi-Fi 6E AX211 160MHz

Storage - WD PC SN560 SDDPNQE-1T00-1002

Trackpad - I2C HID (Modified VoodooI2C. Polling mode only)

## What doesn't work (yet)

GPU - NVIDIA GeForce RTX 4070 Laptop GPU

Audio - Realtek High Definition Audio

## Configuration
### Bios settings
Advanced\ErP - Disabled

Advanced\Hyper-Threading - Enabled

Advanced\Intel Virtualization Technology - Enabled

Advanced\Intel AES-NI - Enabled

Advanced\VT-d - Enabled

Advanced\VMD Setup menu\Enable VMD Controller - Disabled

Boot\Fast Boot - Disabled

### Boot Arguments

The following boot arguments are configured:

- `-v` - Verbose mode for troubleshooting
- `keepsyms=1` - Keep kernel symbols for panic logs
- `debug=0x100` - Enable debug output
- `-vi2c-force-polling` - Force polling mode for I2C trackpad
- `-wegnoegpu` - Disable discrete NVIDIA GPU
- `-igfxnotelemetryload` - Disable Intel graphics telemetry

### ACPI

### Kexts

| **Kext** | **Version** | **Purpose** |
| -------- | ----------- | ----------- |
| Lilu | 1.7.1 | Patching engine for various kexts |
| VirtualSMC | 1.3.7 | SMC emulation for macOS |
| WhateverGreen | 1.7.0 | Graphics patching |
| AppleALC | 1.9.5 | Audio support |
| NootedBlue | 1.0.0 | Intel UHD Graphics (Raptor Lake) support |
| AirportItlwm | 2.3.0 | Intel Wi-Fi 6E AX211 support |
| RealtekRTL8111 | 2.5.0 | Realtek Ethernet controller |
| VoodooI2C | 2.9.1 | I2C trackpad support |
| VoodooPS2Controller | - | PS2 keyboard support |
| NVMeFix | - | NVMe power management |
| USBToolBox + UTBMap | - | USB port mapping |
| ECEnabler | - | Embedded Controller support |
| RestrictEvents | - | CPU rename and other system tweaks |