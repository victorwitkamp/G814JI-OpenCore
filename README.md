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

iGPU - the brightness slider and keys do not change the panel's brightness yet; the panel's 240 Hz mode; external displays; hardware video decode

## Source code of the G814JI-specific parts

| **Part** | **Source** | **Binary in this repository** |
| -------- | ---------- | ----------------------------- |
| NootedGreen.kext (iGPU) | [victorwitkamp/NootedGreen](https://github.com/victorwitkamp/NootedGreen), branch [`raptor-lake-hx`](https://github.com/victorwitkamp/NootedGreen/tree/raptor-lake-hx): [pull request #23](https://github.com/sgiammori/NootedGreen/pull/23) to sgiammori/NootedGreen | Release build of [`4d10017`](https://github.com/victorwitkamp/NootedGreen/commit/4d10017a3ba2a8cdf9aa1b5e37b8b623df098639), the branch head, tested on this laptop. |
| VoodooGPIO (trackpad GPIO interrupts) | [victorwitkamp/VoodooGPIO](https://github.com/victorwitkamp/VoodooGPIO): [pull request #19](https://github.com/VoodooI2C/VoodooGPIO/pull/19) to VoodooI2C/VoodooGPIO (Raptor Lake-S support) | A DEBUG development build made before the pull request's clean-up, inside [VoodooI2C](https://github.com/VoodooI2C/VoodooI2C) v2.9.1 (`e3ac3ed`, DEBUG), whose `IOPCIMatch` adds the Raptor Lake-S PCH's I2C controller (8086:7A4C). |
| G814AmpDxe.efi (speaker amplifiers for the boot chime) | [victorwitkamp/G814AmpDxe](https://github.com/victorwitkamp/G814AmpDxe) | DEBUG build of [`e32d5ef`](https://github.com/victorwitkamp/G814AmpDxe/commit/e32d5ef42336fbbe9d838b290ac5b6fb3d0efc45) (OpenCorePkg master tree, `build -b DEBUG -t XCODE5`). |
| HookCaseBridge (exports the `org.smichaud.HookCase` symbols that Apple's Tiger Lake kexts link against) | [victorwitkamp/HookCaseBridge](https://github.com/victorwitkamp/HookCaseBridge) | Not in this repository: installed in `/Library/Extensions` with the Tiger Lake kexts (see Intel Graphics below). |
| G814Amp.kext (speaker amplifiers in macOS) | [victorwitkamp/G814Amp](https://github.com/victorwitkamp/G814Amp) | 0.2.0, built from it (`make` reproduces the binary byte for byte). |
| IntelBTPatcher.kext 2.5.0 | upstream [OpenIntelWireless/IntelBluetoothFirmware@a414375](https://github.com/OpenIntelWireless/IntelBluetoothFirmware/commit/a414375505fa3b014be32f8fca31b5bbfdf9f10f) | Built from that commit (master; no release since 2.4.0). |

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

Outside this EFI: Apple's Tiger Lake framebuffer and accelerator kexts (16.0.32) are installed in `/Library/Extensions` (approved in
System Settings, loaded from the Auxiliary Kernel Collection) together with
[HookCaseBridge](https://github.com/victorwitkamp/HookCaseBridge), without which neither of them loads.

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

| **Kext** | **Version** | **Purpose** | **Source** |
| -------- | ----------- | ----------- | ---------- |
| Lilu | 1.7.2 (DEBUG) | Patch engine | [acidanthera/Lilu](https://github.com/acidanthera/Lilu) |
| DebugEnhancer | 1.1.1 | Kernel debug output | [acidanthera/DebugEnhancer](https://github.com/acidanthera/DebugEnhancer) |
| RestrictEvents | 1.1.6 | CPU brand string in About This Mac (`revcpu=1`) | [acidanthera/RestrictEvents](https://github.com/acidanthera/RestrictEvents) |
| VirtualSMC, SMCProcessor, SMCBatteryManager | 1.3.8 | SMC emulation, CPU sensors, battery | [acidanthera/VirtualSMC](https://github.com/acidanthera/VirtualSMC) |
| ECEnabler | 1.0.6 | Battery status from the EC | [averycblack/ECEnabler](https://github.com/averycblack/ECEnabler) |
| NootedGreen | 1.0.0 | Raptor Lake-HX iGPU | [victorwitkamp/NootedGreen](https://github.com/victorwitkamp/NootedGreen/tree/raptor-lake-hx) (see [Source code](#source-code-of-the-g814ji-specific-parts)) |
| AppleALC | 1.9.8 | Audio (layout 22) | [acidanthera/AppleALC](https://github.com/acidanthera/AppleALC) |
| G814Amp | 0.2.0 | CS35L41 speaker amplifiers | [victorwitkamp/G814Amp](https://github.com/victorwitkamp/G814Amp) |
| USBToolBox + UTBMap | 1.1.1 / 1.2 | USB map | [USBToolBox/kext](https://github.com/USBToolBox/kext); the map is `UTBMap.kext/Contents/Info.plist` |
| IntelBluetoothFirmware | 2.4.0 | Bluetooth firmware upload | [OpenIntelWireless/IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) v2.4.0 |
| IntelBTPatcher | 2.5.0 | Intel Bluetooth fixes (the 2.4.0 release panics on Sequoia) | built from [IntelBluetoothFirmware@a414375](https://github.com/OpenIntelWireless/IntelBluetoothFirmware/commit/a414375505fa3b014be32f8fca31b5bbfdf9f10f) (master, not released) |
| BlueToolFixup | 2.7.2 | Bluetooth stack fixes for non-Apple controllers | [acidanthera/BrcmPatchRAM](https://github.com/acidanthera/BrcmPatchRAM) |
| AirportItlwm | 2.4.0 | Wi-Fi | [laobamac/itlwm](https://github.com/laobamac/itlwm/releases/tag/v2.4.0-alpha) v2.4.0-alpha (`bbe368e`, the AirportItlwm-Sequoia build) |
| RealtekRTL8111 | 2.4.2 | Ethernet | [Mieze/RTL8111_driver_for_OS_X](https://github.com/Mieze/RTL8111_driver_for_OS_X) |
| VoodooI2C (VoodooI2CServices, VoodooInput), VoodooI2CHID | 2.9.1 | Trackpad | [VoodooI2C/VoodooI2C](https://github.com/VoodooI2C/VoodooI2C) v2.9.1, [VoodooI2C/VoodooI2CHID](https://github.com/VoodooI2C/VoodooI2CHID) |
| VoodooGPIO (inside VoodooI2C.kext) | 1.1 | GPIO interrupts for the trackpad (Raptor Lake-S PCH) | [victorwitkamp/VoodooGPIO](https://github.com/victorwitkamp/VoodooGPIO) (see [Source code](#source-code-of-the-g814ji-specific-parts)) |
| VoodooPS2Controller, VoodooPS2Keyboard | 2.3.7 | PS/2 keyboard | [acidanthera/VoodooPS2](https://github.com/acidanthera/VoodooPS2) |

### UEFI drivers

OpenRuntime, HfsPlus, OpenCanopy, AudioDxe, ResetNvramEntry ([acidanthera/OpenCorePkg](https://github.com/acidanthera/OpenCorePkg) 1.0.8)
and G814AmpDxe (enables the speaker amplifiers for the boot chime; [victorwitkamp/G814AmpDxe](https://github.com/victorwitkamp/G814AmpDxe)).
Picker icons: [acidanthera/OcBinaryData](https://github.com/acidanthera/OcBinaryData) `640e7e9`.
