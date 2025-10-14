# NootedBlue Quick Start Guide - macOS Sequoia

## TL;DR - What to Use

### ✅ RECOMMENDED: Version 4 (2024-11-14)
**Location**: `NootedBlue/NootedBlue.kext macosx15.1 2024-11-14`

**Why?**
- Latest build for macOS Sequoia 15.1
- Best device recognition for Raptor Lake 0xA788
- Proven stable (currently installed)

## Quick Install

1. **Copy the kext**:
   ```bash
   cp -r "NootedBlue/NootedBlue.kext macosx15.1 2024-11-14" /Volumes/EFI/EFI/OC/Kexts/NootedBlue.kext
   ```

2. **Verify config.plist** has these minimal settings:
   ```xml
   <!-- DeviceProperties → Add -->
   <key>PciRoot(0x0)/Pci(0x2,0x0)</key>
   <dict>
       <key>device-id</key>
       <data>XAoAAA==</data>  <!-- 0x8A5C -->
       
       <key>AAPL,ig-platform-id</key>
       <data>AABYmA==</data>  <!-- 0x9A580000 -->
       
       <key>model</key>
       <string>Intel Iris Xe Graphics</string>
   </dict>
   ```

3. **Boot with verbose** mode first: `-v`

4. **Verify** in System Information that "Intel Iris Xe Graphics" appears

## Version Comparison Chart

| Version | Date | macOS | Device Support | CsbProcMode | Best For |
|---------|------|-------|----------------|-------------|----------|
| v1 | Nov 04 | 14.0 | Good | 0 | Sonoma/Ventura |
| v2 | Nov 12 | 15.1 | Enhanced | 1 | Performance testing |
| v3 | Nov 13 | 15.1 | Good | 0 | - |
| **v4** | **Nov 14** | **15.1** | **Best** | **0** | **Sequoia** ⭐ |

## If Graphics Don't Work

Try these in order:

1. **Check boot args**: Add `-nbluedbg` for debugging
2. **Try Version 2**: Has CsbProcModeSelect = 1 (enhanced mode)
3. **Verify NVIDIA disabled**: Check SSDT-DGPU is enabled
4. **Check framebuffer**: Try alternative ig-platform-id:
   - `0x9A490000` or `0x8A520000`

## BIOS Settings (Required)

✅ Must be set correctly:
- Advanced → VMD Controller = **Disabled**
- Advanced → VT-d = **Enabled** (do NOT disable!)
- Boot → Fast Boot = **Disabled**

## Need More Help?

See full analysis: `NOOTEDBLUE_ANALYSIS.md`

## Status: Ready to Use ✅

Version 4 is already installed and working in your current configuration.
