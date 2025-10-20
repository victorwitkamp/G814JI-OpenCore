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

ACPI patches are configured for proper power management and device initialization.

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
## Additional Configuration Details

### Graphics Configuration

The laptop has two graphics devices:
- **Intel UHD Graphics** (iGPU): Enabled and working with NootedBlue kext
- **NVIDIA GeForce RTX 4070**: Disabled via DeviceProperties (`disable-gpu = true`)

The integrated graphics is configured with Raptor Lake device ID `0xA788`. The NootedBlue kext provides native Intel UHD Graphics support for 13th Gen Intel processors.

### SMBIOS

**Model**: MacBookPro16,3

This SMBIOS model is chosen because:
- It supports Intel Coffee Lake+ CPUs (compatible with Raptor Lake)
- It's a laptop model suitable for mobile hardware
- It has proper power management characteristics

### Important Notes

1. **Audio**: Currently not working. AppleALC v1.9.5 is installed but may need proper layout-id configuration for the Realtek audio codec.

2. **Discrete GPU**: The NVIDIA RTX 4070 is disabled as there's no macOS support for NVIDIA GPUs after High Sierra.

3. **Trackpad**: Using VoodooI2C with polling mode (`-vi2c-force-polling` boot argument) for I2C HID trackpad support.

4. **Wi-Fi**: Using AirportItlwm for native Wi-Fi experience. For HeliPort companion app, use itlwm.kext instead.

5. **USB Mapping**: Custom USB mapping is configured with USBToolBox and UTBMap kexts.

### Performance Optimizations

- **NVMeFix**: Improves NVMe power management and fixes kernel panics
- **RestrictEvents**: Enables CPU renaming and other system optimizations
- **ECEnabler**: Provides proper Embedded Controller support for battery management
- **AppleXcpmCfgLock**: Enabled for proper CPU power management
- **ProvideCurrentCpuInfo**: Ensures proper CPU frequency information

### Future Improvements

Areas that could be improved in future updates:

1. **Audio Support**: Test different layout-ids for AppleALC to enable audio
2. **NootedBlue Updates**: Monitor for newer NootedBlue releases for better iGPU support
3. **macOS Updates**: Test compatibility with newer macOS versions (currently Ventura)
4. **Power Management**: Fine-tune CPU power management and battery life

## Troubleshooting

### Boot Issues

If you experience boot issues:
1. Ensure Secure Boot is disabled in BIOS
2. Verify boot-args are set correctly
3. Check that all kexts are enabled in config.plist
4. Use verbose mode (`-v`) to see boot logs

### Graphics Issues

If graphics aren't working:
1. Verify NootedBlue.kext is enabled
2. Check that `-wegnoegpu` is in boot-args
3. Ensure iGPU is enabled in BIOS
4. Verify device ID is set correctly (0xA788 for Raptor Lake)

### Network Issues

For Wi-Fi problems:
1. Ensure correct AirportItlwm version for your macOS version
2. Check that Intel Wi-Fi 6E AX211 is supported
3. Try itlwm.kext with HeliPort if AirportItlwm doesn't work

## Credits

- [Acidanthera](https://github.com/acidanthera) for OpenCore, Lilu, VirtualSMC, WhateverGreen, AppleALC, and other kexts
- [OpenIntelWireless](https://github.com/OpenIntelWireless) for itlwm/AirportItlwm
- [VoodooI2C Team](https://github.com/VoodooI2C) for trackpad support
- [ChefKiss Team](https://github.com/ChefKissInc) for NootedBlue
- [Mieze](https://github.com/Mieze) for RealtekRTL8111
- [Dortania](https://dortania.github.io/) for OpenCore installation guides
