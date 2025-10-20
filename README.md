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
### Bios settings
Advanced\ErP - Disabled

Advanced\Hyper-Threading - Enabled

Advanced\Intel Virtualization Technology - Enabled

Advanced\Intel AES-NI - Enabled

Advanced\VT-d - Enabled

Advanced\VMD Setup menu\Enable VMD Controller - Disabled

Boot\Fast Boot - Disabled

### ACPI
- **SSDT-GPI0.aml** - Enables GPIO for I2C trackpad (sets GPHD=0, USTP=1, TPDM=0)
- **SSDT-PLUG-ALT.aml** - Plugin-type for CPU power management
- **SSDT-USBX.aml** - USB power properties
- **SSDT-RTCAWAC.aml** - RTC/AWAC fix for 300+ series chipsets
- **SSDT-SBUS-MCHC.aml** - SMBus support
- **SSDT-XOSI.aml** - OS check fix for Darwin
- **SSDT-DGPU_v4.aml** - Disables discrete GPU (NVIDIA RTX 4070)

### Kexts
#### Essential
- **Lilu.kext** - Kernel extension patcher
- **VirtualSMC.kext** - SMC emulator
- **WhateverGreen.kext** - Graphics patches

#### Input Devices
- **VoodooI2C.kext** + **VoodooI2CHID.kext** - I2C trackpad support (polling mode)
- **VoodooPS2Controller.kext** - PS/2 keyboard support
  - VoodooPS2Keyboard.kext - PS/2 keyboard driver
  - VoodooInput.kext - Unified input stack for keyboard and trackpad gestures

#### Other
- **SMCBatteryManager.kext** - Battery status
- **SMCProcessor.kext** - CPU sensors
- **SMCSuperIO.kext** - Fan sensors
- **ECEnabler.kext** - Embedded Controller support
- **NVMeFix.kext** - NVMe power management
- **RealtekRTL8111.kext** - Ethernet
- **AirportItlwm.kext** - WiFi (Intel AX211)
- **USBToolBox.kext** + **UTBMap.kext** - USB port mapping
- **RestrictEvents.kext** - System restrictions workarounds
- **DebugEnhancer.kext** - Enhanced debug logging