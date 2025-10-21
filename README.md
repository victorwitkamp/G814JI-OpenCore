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

Keyboard - PS2 Keyboard (VoodooPS2Controller with SSDT-PS2K)

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

The following SSDT patches are used:

- **SSDT-USBX.aml** - Generic USBX device for USB power properties
- **SSDT-PLUG-ALT.aml** - Redefines modern CPU devices as legacy Processor objects and sets plugin-type to 1
- **SSDT-RTCAWAC.aml** - Fixes incompatible AWAC clock
- **SSDT-SBUS-MCHC.aml** - Defines MCHC and BUS0 device for SMBus compatibility
- **SSDT-GPI0.aml** - Enables GPIO controller for I2C touchpad
- **SSDT-XOSI.aml** - OS detection spoofing
- **SSDT-DGPU_v4.aml** - Disables discrete GPU (NVIDIA RTX 4070)
- **SSDT-PS2K.aml** - Forces PS2 keyboard device to be enabled (fixes built-in keyboard)

### Kexts