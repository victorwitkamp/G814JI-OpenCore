# Asus ROG Strix G814JI OpenCore

**Current macOS version:** Sequoia 15.7.1 (24G231)

**Current OpenCore version:** 1.0.8 (RELEASE)

**BIOS Version:** 331

**GOP Version:** 17.0.1081

**EC Version:** G814JIEC.051

## Components

| **Component** | **Model**                                                   |
| ------------- | ----------------------------------------------------------- |
| CPU           | 13th Gen Intel(R) Core(TM) i9-13980HX                       |
| Chipset       | Intel HM770 (Raptor Lake-S PCH)                             |
| RAM           | 16GB DDR5 4800MHz                                           |
| iGPU          | Intel(R) UHD Graphics (Raptor Lake-HX, 8086:A788)           |
| GPU           | NVIDIA GeForce RTX 4070 Laptop GPU (\_SB.PC00.PEG1.PEGP)    |
| Audio         | Realtek High Definition Audio + 2x Cirrus Logic CS35L41 speaker amplifiers |
| Ethernet      | Realtek PCIe GbE Family Controller                          |
| Wireless      | Intel(R) Wi-Fi 6E AX211 160MHz                              |
| Bluetooth     | Intel AX211 Bluetooth (USB 8087:0033)                       |
| Storage       | WD PC SN560 SDDPNQE-1T00-1002 (1TB PCIe® 4.0 NVMe™ M.2 SSD) |
| Keyboard      | ASUS N-KEY Device (USB)                                     |
| Trackpad      | I2C HID                                                     |

## What works

CPU - 13th Gen Intel(R) Core(TM) i9-13980HX

iGPU - Intel(R) UHD Graphics with NootedGreen on Apple's Tiger Lake drivers (work in progress, see below)

Audio - speakers (AppleALC layout 22 + G814Amp for the CS35L41 amplifiers) and the boot chime (G814AmpDxe + AudioDxe)

Ethernet - Realtek PCIe GbE Family Controller

Wireless - Intel(R) Wi-Fi 6E AX211 160MHz (AirportItlwm)

Bluetooth - Intel AX211 (IntelBluetoothFirmware, IntelBTPatcher 2.5.0, BlueToolFixup)

Storage - WD PC SN560 SDDPNQE-1T00-1002

Keyboard - ASUS N-KEY Device on USB port HS03

Trackpad - I2C HID (VoodooI2C with the Raptor Lake-S VoodooGPIO, GPIO interrupt mode)

USB - 10-port map (UTBMap): HS01-HS03, HS05, HS06, HS08, HS14, SS02-SS04

Battery - SMCBatteryManager

## What doesn't work (yet)

GPU - NVIDIA GeForce RTX 4070 Laptop GPU (powered off by SSDT-DGPU_v5)

iGPU - OpenGL apps (for example Photo Booth) crash in Apple's Tiger Lake OpenGL driver

## Configuration
### Bios settings
Advanced\ErP - Disabled

Advanced\Hyper-Threading - Enabled

Advanced\Intel Virtualization Technology - Enabled

Advanced\Intel AES-NI - Enabled

Advanced\VT-d - Enabled

Advanced\VMD Setup menu\Enable VMD Controller - Disabled

Boot\Fast Boot - Disabled

### Intel Graphics (iGPU)

**NootedGreen** runs the Raptor Lake-HX iGPU (8086:A788) on Apple's Tiger Lake graphics drivers. DeviceProperties for
`PciRoot(0x0)/Pci(0x2,0x0)`: `device-id` 0x9A49 and `AAPL,ig-platform-id` 0x9A490000 (Tiger Lake). NootedGreen replaces
NootedBlue and WhateverGreen. The NVIDIA RTX 4070 dGPU must stay off (SSDT-DGPU_v5) and the VMD controller must be disabled in the BIOS.

### SIP

`csr-active-config` = 0x00000253.

### ACPI

The following SSDT patches are used:

- **SSDT-USBX.aml** - Generic USBX device for USB power properties
- **SSDT-PLUG-ALT.aml** - Redefines modern CPU devices as legacy Processor objects and sets plugin-type to 1
- **SSDT-RTCAWAC.aml** - Fixes incompatible AWAC clock
- **SSDT-SBUS-MCHC.aml** - Defines MCHC and BUS0 device for SMBus compatibility
- **SSDT-GPI0.aml** - Enables GPIO controller for I2C touchpad
- **SSDT-XOSI.aml** - OS detection spoofing
- **SSDT-DGPU_v5.aml** - Powers off the discrete GPU (NVIDIA RTX 4070) and presents it as a device no driver matches (`_STA` 0x0F, `_DSM` with class-code FFFFFFFF and name `#display`). **Requires the `_DSM` to `XDSM` rename in config.plist** (with the `_OFF` to `XOFF` and `_STA` to `XSTA` renames for `_SB.PC00.PEG1.PEGP`).
- **SSDT-PNLF.aml** - Backlight device (`_CID` "backlight") for AppleBacklight
- **SSDT-EC.aml** - Fake EC under `PC00.LPCB` for AppleBusPowerController (the firmware's EC returns `_STA` 0)

The `.dsl` sources of SSDT-DGPU_v5, SSDT-EC and SSDT-PNLF are in `EFI/OC/ACPI`.

### Kexts

| **Kext** | **Version** | **Purpose** |
| -------- | ----------- | ----------- |
| Lilu | 1.7.2 (DEBUG) | Patch engine |
| DebugEnhancer | 1.1.1 | Kernel debug output |
| RestrictEvents | 1.1.6 | CPU brand string in About This Mac (`revcpu=1`) |
| VirtualSMC, SMCProcessor, SMCBatteryManager | 1.3.8 | SMC emulation, CPU sensors, battery |
| ECEnabler | 1.0.6 | Battery status from the EC |
| NootedGreen | 1.0.0 | Raptor Lake-HX iGPU |
| AppleALC | 1.9.8 | Audio (layout 22) |
| G814Amp | 0.2.0 | CS35L41 speaker amplifiers |
| USBToolBox + UTBMap | 1.1.1 / 1.2 | USB map |
| IntelBluetoothFirmware | 2.4.0 | Bluetooth firmware upload |
| IntelBTPatcher | 2.5.0 | Intel Bluetooth fixes, built from upstream master (the 2.4.0 release panics on Sequoia) |
| BlueToolFixup | 2.7.2 | Bluetooth stack fixes for non-Apple controllers |
| AirportItlwm | 2.4.0 | Wi-Fi (laobamac AirportItlwm-Sequoia) |
| RealtekRTL8111 | 2.4.2 | Ethernet |
| VoodooI2C (VoodooGPIO, VoodooI2CServices, VoodooInput), VoodooI2CHID | 2.9.1 | Trackpad |
| VoodooPS2Controller, VoodooPS2Keyboard | 2.3.7 | PS/2 keyboard |

### UEFI drivers

OpenRuntime, HfsPlus, OpenCanopy, G814AmpDxe (enables the speaker amplifiers for the boot chime), AudioDxe, ResetNvramEntry.
