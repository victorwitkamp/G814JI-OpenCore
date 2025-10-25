# NootedBlue VRAM Display Fix

## Problem
NootedBlue was showing incorrect VRAM (Video RAM) amounts in macOS System Information, typically displaying very low values like 7-15MB instead of the actual allocated memory.

## Root Cause
The issue was caused by a mismatch between:
- **BIOS DVMT Pre-Allocated Memory**: 128MB (detected by NootedBlue as `stolen_size 0x8000000`)
- **OpenCore framebuffer-stolenmem setting**: 19MB (0x01300000)

This mismatch caused macOS to incorrectly report available graphics memory.

## Solution
Updated the OpenCore `config.plist` DeviceProperties for the iGPU to properly match the BIOS allocation:

### Changed Values
```xml
<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
<dict>
    <!-- BEFORE: -->
    <key>framebuffer-stolenmem</key>
    <data>AAAwAQ==</data>  <!-- 19MB -->
    
    <!-- AFTER: -->
    <key>framebuffer-stolenmem</key>
    <data>AAAACA==</data>  <!-- 128MB -->
</dict>
```

### Additional Improvements
Also added the `AAPL,slot-name` property to help macOS properly identify the graphics card:

```xml
<key>AAPL,slot-name</key>
<string>Internal@0,2,0</string>
```

## Technical Details

### Stolen Memory Values
- **0x01300000** = 19,922,944 bytes = 19 MB (old value)
- **0x08000000** = 134,217,728 bytes = 128 MB (new value)

The 128MB value matches what NootedBlue detected from the BIOS:
```
[    8.004803]: NootedBlue     nblue: @ stolen_size 0x8000000
```

### Why This Matters
1. **Proper VRAM Reporting**: macOS System Information will now display the correct amount of video memory
2. **Better Stability**: Matching the BIOS allocation prevents potential memory allocation conflicts
3. **Improved Performance**: Ensures graphics drivers can properly utilize the available memory

## Verification

After applying this fix, you should see improved VRAM reporting in:
1. **About This Mac** → Displays → Graphics/Displays section
2. **System Information** → Graphics/Displays
3. **Third-party tools** like Hackintool or IORegistryExplorer

Expected result: Video memory should show 128MB or higher (macOS may report total available including shared system RAM).

## Related Files
- `EFI/OC/config.plist` - Main OpenCore configuration
- `docs/NootedBlue/NOOTEDBLUE_ANALYSIS.md` - Complete NootedBlue analysis
- `docs/NootedBlue/NOOTEDBLUE_QUICKSTART.md` - Quick setup guide

## References
- **DVMT**: Dynamic Video Memory Technology - Intel's method for dynamically allocating system memory to the iGPU
- **Stolen Memory**: Pre-allocated memory reserved for the integrated graphics from system RAM
- **Framebuffer Memory**: Additional memory allocation for the graphics framebuffer

---

*Fix Applied: 2025-10-25*  
*System: Asus G814JI | iGPU: Intel UHD Graphics (0xA788) | OpenCore 1.0.5*
