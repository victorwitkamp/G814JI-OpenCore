# Graphics Configuration Solution for Raptor Lake iGPU

## Problem Statement

The Asus ROG Strix G814JI laptop has an Intel Raptor Lake iGPU (UHD Graphics, device ID 0xA788) that was not working properly in macOS due to incorrect configuration.

### Issues Found

1. **WhateverGreen was enabled** but doesn't support Raptor Lake iGPU properly
2. **NootedBlue was disabled** even though it's the correct kext for Raptor Lake
3. **Conflicting boot arguments** were preventing graphics acceleration:
   - `-wegnoegpu` - Disables WhateverGreen's GPU patching
   - `-igfxvesa` - Forces VESA mode (software rendering only)
   - `-igfxonln=1` - Intel graphics online flag
   - `IGLogLevel=8` - Verbose Intel graphics logging
4. **Missing DeviceProperties** for the iGPU

## Solution Implemented

### 1. Kext Configuration

**Disabled WhateverGreen.kext:**
- WhateverGreen doesn't properly support Intel 13th Gen (Raptor Lake) iGPUs
- It conflicts with NootedBlue when both are enabled
- Changed from `<true/>` to `<false/>` in config.plist

**Enabled NootedBlue.kext:**
- NootedBlue is specifically designed for newer Intel iGPUs (Tiger Lake, Alder Lake, Raptor Lake)
- Changed from `<false/>` to `<true/>` in config.plist
- Updated comment to clarify its purpose

### 2. Boot Arguments

**Removed conflicting flags:**
```
Before: -v keepsyms=1 debug=0x100 -vi2c-force-polling IGLogLevel=8 -igfxvesa -igfxonln=1 -wegnoegpu
After:  -v keepsyms=1 debug=0x100 -vi2c-force-polling
```

**Flags removed:**
- `-wegnoegpu` - Was disabling WhateverGreen (no longer needed since WhateverGreen is now disabled)
- `-igfxvesa` - Was forcing VESA mode, preventing hardware acceleration
- `-igfxonln=1` - Intel graphics flag that's not needed with NootedBlue
- `IGLogLevel=8` - Verbose logging that's not needed in normal operation

**Flags kept:**
- `-v` - Verbose mode (useful for debugging)
- `keepsyms=1` - Keep symbols on kernel panic
- `debug=0x100` - Debug flag
- `-vi2c-force-polling` - Required for VoodooI2C trackpad

### 3. DeviceProperties Configuration

Added proper configuration for the iGPU at `PciRoot(0x0)/Pci(0x2,0x0)`:

```xml
<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
<dict>
    <key>AAPL,ig-platform-id</key>
    <data>AACbWQ==</data>
    <key>device-id</key>
    <data>iKcAAA==</data>
</dict>
```

**Values explained:**
- `AAPL,ig-platform-id`: `0x00009B59` - Platform ID for mobile Coffee Lake (commonly used for spoofing newer iGPUs)
- `device-id`: `0xA788` - The actual Raptor Lake UHD Graphics device ID

The dGPU (NVIDIA RTX 4070) remains disabled at `PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)` as it's not supported in macOS.

## Why This Works

### NootedBlue vs WhateverGreen

**WhateverGreen:**
- General-purpose graphics patching kext
- Supports Intel GPUs up to 11th Gen (Rocket Lake)
- Does NOT properly support 12th Gen (Alder Lake) or 13th Gen (Raptor Lake) iGPUs
- Tries to apply patches that don't work with newer architectures

**NootedBlue:**
- Specialized kext for newer Intel iGPUs
- Specifically designed for Tiger Lake, Alder Lake, and Raptor Lake
- Provides proper framebuffer patching and hardware acceleration
- Must be used instead of (not alongside) WhateverGreen

### Conflict Resolution

When both kexts are enabled, they can conflict because:
1. Both try to patch the Intel graphics subsystem
2. They apply different patch sets designed for different architectures
3. This can cause system instability, panics, or failure to load graphics drivers

By disabling WhateverGreen and enabling NootedBlue, we ensure only the correct patches are applied.

## Expected Results

After applying this configuration:

1. **Hardware Acceleration:** The iGPU should provide full hardware acceleration
2. **Display Output:** Internal and external displays should work properly
3. **Metal Support:** Metal API should be available for graphics-intensive applications
4. **System Stability:** No more graphics-related kernel panics or black screens

## Hardware Details

- **Laptop:** Asus ROG Strix G814JI
- **CPU:** Intel Core i9-13980HX (13th Gen Raptor Lake)
- **iGPU:** Intel UHD Graphics (Device ID: 0xA788)
- **dGPU:** NVIDIA GeForce RTX 4070 Laptop GPU (Disabled - not supported in macOS)
- **macOS Version:** Ventura (13.x)
- **OpenCore Version:** 1.0.3

## References

- [NootedBlue GitHub Repository](https://github.com/KennNek/NootedBlue)
- [WhateverGreen GitHub Repository](https://github.com/acidanthera/WhateverGreen)
- [OpenCore Configuration Guide](https://dortania.github.io/OpenCore-Install-Guide/)
- [Dortania GPU Buyers Guide](https://dortania.github.io/GPU-Buyers-Guide/)

## Troubleshooting

If graphics still don't work after applying this configuration:

1. **Verify NootedBlue is loaded:**
   - Check System Information → Software → Extensions
   - Look for `as.vit9696.NootedBlue`

2. **Check boot log:**
   - Boot with `-v` flag to see verbose output
   - Look for NootedBlue initialization messages

3. **Verify device properties:**
   - Use tools like Hackintool or IORegistryExplorer
   - Check that iGPU is at correct PCI path
   - Verify device-id and platform-id are applied

4. **BIOS settings:**
   - Ensure iGPU is enabled in BIOS
   - Set DVMT Pre-Allocated to 64MB or higher (if available)
   - Disable Secure Boot

## Additional Notes

- The NVIDIA RTX 4070 will never work in macOS as NVIDIA drivers are not available for modern macOS versions
- This configuration is optimized for macOS Ventura; adjustments may be needed for other versions
- Always backup your EFI before making changes
- Test boot with a USB EFI first before replacing the main EFI