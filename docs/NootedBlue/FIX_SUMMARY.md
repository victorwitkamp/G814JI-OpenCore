# NootedBlue VRAM Issue - Fix Summary

## Issue Description
User reported: "NootedBlue is still not working (only 15mb memory)"

## Analysis Performed

### 1. Log Analysis
Reviewed the provided logs:
- **bootlog7.rtf**: System boot kernel log
- **systemlog.rtf**: Runtime system log
- **opencore-2025-10-25-134438.txt**: OpenCore boot log

### 2. Key Findings

#### From Boot Log
```
[8.004803]: NootedBlue nblue: @ stolen_size 0x8000000
```
This shows NootedBlue detected **128MB** (0x8000000 bytes) of stolen memory from the BIOS.

#### From Config Analysis
The `config.plist` was configured with:
```xml
<key>framebuffer-stolenmem</key>
<data>AAAwAQ==</data>  <!-- 19MB -->
```

#### The Problem
**Mismatch**: BIOS allocated 128MB, but OpenCore config only declared 19MB.
- This caused macOS to incorrectly report VRAM
- NootedBlue couldn't properly utilize the available graphics memory
- System Information would show very low VRAM (7-15MB range)

## Solution Implemented

### Changes to `EFI/OC/config.plist`

1. **Increased framebuffer-stolenmem** from 19MB to 128MB:
   ```xml
   <!-- BEFORE -->
   <data>AAAwAQ==</data>  <!-- 19MB -->
   
   <!-- AFTER -->
   <data>AAAACA==</data>  <!-- 128MB -->
   ```

2. **Added AAPL,slot-name property** for better device identification:
   ```xml
   <key>AAPL,slot-name</key>
   <string>Internal@0,2,0</string>
   ```

### Documentation Updates

1. **Updated** `docs/NootedBlue/NOOTEDBLUE_ANALYSIS.md`
   - Changed recommended stolen memory value from 19MB to 128MB
   - Updated performance optimization section

2. **Created** `docs/NootedBlue/VRAM_FIX.md`
   - Detailed explanation of the issue
   - Technical details about the fix
   - Verification steps

## What to Expect After Fix

### ✅ Expected Improvements

1. **Proper VRAM Reporting**
   - "About This Mac" should show correct video memory
   - System Information → Graphics/Displays will display proper VRAM
   - May show 128MB or higher (macOS adds shared system RAM)

2. **Better NootedBlue Stability**
   - Matches BIOS DVMT pre-allocation
   - Eliminates memory allocation conflicts
   - Graphics driver can properly utilize available memory

3. **Unchanged Performance**
   - Boot time: Same
   - Graphics acceleration: Already working, should remain stable
   - Display output: No changes expected

### 🧪 Testing Steps

1. **Boot Test**
   ```bash
   # Boot with verbose mode to see any issues
   # Add -v to boot-args if not already present
   ```

2. **Check VRAM Display**
   - Open "About This Mac"
   - Go to Displays section
   - Verify graphics memory shows 128MB or higher

3. **System Information Check**
   - Open System Information (⌘+Space → "System Information")
   - Go to Graphics/Displays
   - Check VRAM (Video Memory) field

4. **Graphics Test**
   - Play a 4K video in Safari or QuickTime
   - Test Metal performance with any graphics app
   - Verify smooth rendering and no glitches

## Technical Details

### Memory Values
| Parameter | Before | After | Binary |
|-----------|--------|-------|--------|
| framebuffer-stolenmem | 19 MB | 128 MB | 0x08000000 |
| framebuffer-fbmem | 9 MB | 9 MB | 0x00900000 |

### Base64 Encoding
- **19MB**: `AAAwAQ==` → 0x01300000
- **128MB**: `AAAACA==` → 0x08000000

### Device Path
- **iGPU Location**: PciRoot(0x0)/Pci(0x2,0x0)
- **Slot Name**: Internal@0,2,0

## Troubleshooting

### Current Debug Flags
The system currently has extensive debug flags enabled:
```
-vi2c-force-polling -v keepsyms=1 debug=0x100 igfxonln=1 -liludbg -nbdbg -nbluedbg -liludbgall
```

These are useful for troubleshooting but can be removed once the system is stable:
- `-v`: Verbose mode (shows boot messages)
- `keepsyms=1`: Keep kernel symbols for debugging panics
- `debug=0x100`: Prevents auto-reboot on kernel panic
- `-liludbg`, `-liludbgall`: Lilu debug output
- `-nbdbg`, `-nbluedbg`: NootedBlue debug output
- `-vi2c-force-polling`: Forces I2C polling mode for trackpad
- `igfxonln=1`: Forces all displays online

**For production use**, consider using only:
```
-vi2c-force-polling igfxonln=1
```

### If Boot Fails
1. Reset NVRAM (if boot menu is accessible)
2. Boot in Safe Mode (hold Shift during boot)
3. Revert config by restoring EFI backup

### If VRAM Still Shows Low
1. Check that changes were saved to EFI partition
2. Verify you're booting from the correct EFI
3. Try resetting NVRAM
4. Check IORegistryExplorer for framebuffer properties

### If Graphics Glitches Occur
1. Try intermediate value (64MB):
   ```xml
   <data>AAAABA==</data>  <!-- 64MB = 0x04000000 -->
   ```
2. Check that SSDT-DGPU is properly disabling NVIDIA GPU
3. Verify VMD Controller is disabled in BIOS

## Files Modified

1. `EFI/OC/config.plist`
   - Updated DeviceProperties → Add → PciRoot(0x0)/Pci(0x2,0x0)
   - Changed framebuffer-stolenmem value
   - Added AAPL,slot-name property

2. `docs/NootedBlue/NOOTEDBLUE_ANALYSIS.md`
   - Updated recommended configuration
   - Updated performance optimization notes

3. `docs/NootedBlue/VRAM_FIX.md`
   - New file documenting the fix

## Backup Information

**Before testing**, it's recommended to have:
- EFI backup on USB drive
- Previous working config.plist saved
- Know how to boot from USB EFI if needed

## References

- [OpenCore Configuration](https://dortania.github.io/OpenCore-Install-Guide/)
- [WhateverGreen Documentation](https://github.com/acidanthera/WhateverGreen)
- [NootedBlue GitHub](https://github.com/NootInc/NootedBlue)

---

*Fix Applied: 2025-10-25*  
*System: Asus ROG Strix G814JI*  
*iGPU: Intel UHD Graphics (0xA788 / Raptor Lake)*  
*OpenCore: 1.0.5 (DEBUG)*  
*macOS: Sequoia 15.1*
