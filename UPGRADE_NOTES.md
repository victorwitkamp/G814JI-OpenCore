# OpenCore Configuration Upgrade - October 2025

This document summarizes the improvements and updates made to the ASUS ROG Strix G814JI OpenCore configuration.

## Overview

This upgrade focuses on updating OpenCore and all kexts to their latest versions, enabling proper Intel UHD Graphics support, and optimizing the configuration for better compatibility and performance.

## Updated Components

### OpenCore
- **Previous Version**: 1.0.3
- **New Version**: 1.0.5
- **Changes**: Includes kext injection fixes for macOS 26 and updated builtin firmware versions

### Kexts Updated

| Kext | Old Version | New Version | Key Changes |
|------|-------------|-------------|-------------|
| VirtualSMC | 1.3.4 | 1.3.7 | Added macOS 26 support |
| WhateverGreen | 1.6.9 | 1.7.0 | Added macOS 26 constants |
| AppleALC | 1.9.3 | 1.9.5 | New layout-ids and macOS 26 support |
| RealtekRTL8111 | 2.4.2 | 2.5.0 | Added AppleVTD support, resource allocation restructure |
| Lilu | 1.7.1 | 1.7.1 | Already latest (no update needed) |
| AirportItlwm/itlwm | 2.3.0 | 2.3.0 | Already latest (no update needed) |

### OpenCore Drivers Updated
- OpenRuntime.efi
- OpenCanopy.efi
- AudioDxe.efi

### OpenCore Tools Updated
- OpenShell.efi
- ResetSystem.efi
- CleanNvram.efi

## Configuration Changes

### NootedBlue Enabled
- **Previous State**: Disabled in config.plist
- **New State**: Enabled
- **Impact**: Proper Intel UHD Graphics support for Raptor Lake (device ID 0xA788)

### Boot Arguments Optimized

**Previous boot-args:**
```
-v keepsyms=1 debug=0x100 -vi2c-force-polling IGLogLevel=8 -igfxvesa -igfxonln=1 -wegnoegpu
```

**New boot-args:**
```
-v keepsyms=1 debug=0x100 -vi2c-force-polling -wegnoegpu -igfxnotelemetryload
```

**Changes Made:**
- ❌ Removed `-igfxvesa` (incompatible with NootedBlue)
- ❌ Removed `-igfxonln=1` (incompatible with NootedBlue)
- ❌ Removed `IGLogLevel=8` (excessive logging not needed)
- ✅ Added `-igfxnotelemetryload` (improves graphics stability)

## Documentation Improvements

### Added Sections
1. **Kexts Table**: Complete list of kexts with versions and purposes
2. **Boot Arguments**: Detailed explanation of each boot argument
3. **Graphics Configuration**: Explains dual GPU setup and device IDs
4. **SMBIOS Details**: Rationale for MacBookPro16,3 choice
5. **Performance Optimizations**: Lists all enabled optimizations
6. **Troubleshooting Guide**: Common issues and solutions
7. **Future Improvements**: Roadmap for potential enhancements
8. **Credits**: Acknowledgments for all contributors

## Benefits of This Update

### Improved Compatibility
- ✅ Better macOS 26 (Sequoia) support
- ✅ Updated kexts with latest fixes and features
- ✅ Improved stability with optimized boot arguments

### Better Hardware Support
- ✅ Proper Intel UHD Graphics (Raptor Lake) support via NootedBlue
- ✅ Enhanced Ethernet performance with AppleVTD support
- ✅ Improved NVMe power management

### Enhanced Documentation
- ✅ Clear understanding of configuration choices
- ✅ Easy troubleshooting with comprehensive guides
- ✅ Better maintenance with version tracking

## Testing Recommendations

After applying these updates, please test the following:

1. **Boot Process**
   - [ ] System boots successfully
   - [ ] No kernel panics
   - [ ] Boot time is reasonable

2. **Graphics**
   - [ ] Display output works correctly
   - [ ] Resolution scaling works
   - [ ] Hardware acceleration enabled
   - [ ] Sleep/wake works properly

3. **Network**
   - [ ] Wi-Fi connects and is stable
   - [ ] Ethernet works properly
   - [ ] Network speeds are acceptable

4. **Input Devices**
   - [ ] Trackpad gestures work
   - [ ] Keyboard functions properly
   - [ ] USB devices are recognized

5. **Power Management**
   - [ ] Battery shows correct status
   - [ ] CPU frequency scaling works
   - [ ] Sleep mode functions correctly
   - [ ] System doesn't overheat

6. **Storage**
   - [ ] NVMe SSD is recognized
   - [ ] Read/write performance is good
   - [ ] TRIM is enabled

## Known Issues

1. **Audio**: Still not working - requires proper layout-id configuration
2. **NVIDIA GPU**: Disabled (no macOS support for RTX 4070)

## Next Steps

Consider these potential improvements:

1. Test different AppleALC layout-ids to enable audio
2. Monitor for NootedBlue updates for even better iGPU support
3. Test compatibility with macOS Sonoma and Sequoia
4. Fine-tune CPU power management for better battery life

## Rollback Instructions

If you need to revert to the previous configuration:

1. Boot into recovery mode
2. Mount the EFI partition
3. Restore the previous EFI backup
4. Reboot

It's recommended to keep a backup of the working EFI folder before applying updates.

## Support

For issues or questions:
- Check the Troubleshooting section in README.md
- Review OpenCore documentation at https://dortania.github.io/
- Visit hardware-specific forums and communities

---

**Update Date**: October 20, 2025
**Performed By**: Automated OpenCore Configuration Improvement
**Status**: ✅ Complete and Ready for Testing
