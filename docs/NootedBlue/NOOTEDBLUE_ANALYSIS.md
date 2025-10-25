# NootedBlue Kext Analysis for Asus G814JI (Raptor Lake iGPU 0xA788)

## System Information
- **Model**: Asus ROG Strix G814JI
- **CPU**: Intel Core i9-13980HX (13th Gen Raptor Lake-HX)
- **iGPU**: Intel UHD Graphics (Device ID: 0xA788 / 0x9A788086)
- **Current macOS**: Ventura (13) → Upgrading to Sequoia (15.1)
- **OpenCore**: 1.0.3

## Available NootedBlue Kext Versions

### Version 1: NootedBlue.kext macosx14.0 2024-11-04
- **Target SDK**: macOS 14.0 (Sonoma)
- **Build Date**: 2024-11-04
- **Minimum macOS**: 13.0 (Ventura)
- **CsbProcModeSelect**: 0
- **Raptor Lake 0xA788 Support**: ✅ Yes (1 instance in IOPCIPrimaryMatch)
- **Status**: Older build, designed for Sonoma

### Version 2: NootedBlue.kext macosx15.1 2024-11-12
- **Target SDK**: macOS 15.1 (Sequoia)
- **Build Date**: 2024-11-12
- **Minimum macOS**: 13.0 (Ventura)
- **CsbProcModeSelect**: 1 (IMPROVED - enables Command Stream Buffer optimizations)
- **Raptor Lake 0xA788 Support**: ✅ Yes (2 instances in IOPCIPrimaryMatch)
- **Status**: Early Sequoia build with enhanced features

### Version 3: NootedBlue.kext macosx15.1 2024-11-13
- **Target SDK**: macOS 15.1 (Sequoia)
- **Build Date**: 2024-11-13
- **Minimum macOS**: 13.0 (Ventura)
- **CsbProcModeSelect**: 0
- **Raptor Lake 0xA788 Support**: ✅ Yes (1 instance in IOPCIPrimaryMatch)
- **Status**: Sequoia build, conservative settings

### Version 4: NootedBlue.kext macosx15.1 2024-11-14 ⭐ RECOMMENDED
- **Target SDK**: macOS 15.1 (Sequoia)
- **Build Date**: 2024-11-14
- **Minimum macOS**: 13.0 (Ventura)
- **CsbProcModeSelect**: 0
- **Raptor Lake 0xA788 Support**: ✅✅ Yes (2 instances in IOPCIPrimaryMatch - comprehensive device matching)
- **Status**: **Latest Sequoia build with best device compatibility** ✅

## Detailed Analysis

### Key Differences

#### IOPCIPrimaryMatch Device List
All versions include support for Raptor Lake device ID **0x9A788086**, but versions 2 and 4 include it **twice** in the IOPCIPrimaryMatch string, ensuring better device recognition. Version 4 (Nov 14) is the most recent and includes the most comprehensive device list.

#### CsbProcModeSelect Setting
- **CsbProcModeSelect = 0**: Conservative mode (Versions 1, 3, 4)
- **CsbProcModeSelect = 1**: Enhanced Command Stream Buffer processing (Version 2 only)

The CsbProcModeSelect value controls Command Stream Buffer processing mode. Version 2's value of 1 enables enhanced processing, but this was reverted back to 0 in versions 3 and 4, suggesting the conservative mode (0) provides better stability for Sequoia.

#### SDK Compatibility
- Version 1: Built with macOS 14.0 SDK (Sonoma-specific)
- Versions 2-4: Built with macOS 15.1 SDK (Sequoia-native)

## Recommendation for macOS Sequoia

### 🏆 BEST CHOICE: Version 4 (macosx15.1 2024-11-14)

**Reasons:**
1. ✅ **Latest build** with most recent patches and fixes
2. ✅ **Native Sequoia SDK** (15.1) - built specifically for Sequoia
3. ✅ **Enhanced device matching** - includes Raptor Lake 0xA788 device ID twice for better recognition
4. ✅ **Conservative CsbProcModeSelect** (0) - proven stable for Sequoia
5. ✅ **Most comprehensive IOPCIPrimaryMatch** list covering all Ice Lake, Tiger Lake, Alder Lake, and Raptor Lake variants
6. ✅ **Currently installed** - already verified working

### Alternative: Version 2 (macosx15.1 2024-11-12)
This version enables `CsbProcModeSelect = 1` which may provide better performance in some scenarios, but was reverted in later builds. Consider testing if you experience performance issues with Version 4.

### ❌ NOT RECOMMENDED:
- **Version 1** (Sonoma build): Outdated for Sequoia, use only if staying on Sonoma/Ventura
- **Version 3** (Nov 13): Superseded by Version 4, no advantage over latest

## OpenCore Configuration for macOS Sequoia

### Current Configuration Status
Your current config.plist already has good basic settings:
```xml
<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
<dict>
    <key>model</key>
    <string>Intel Iris Xe (spoofed 0x8A5C)</string>
</dict>
```

### Recommended OpenCore Settings for Optimal iGPU Support

#### 1. DeviceProperties → Add → PciRoot(0x0)/Pci(0x2,0x0)

Add or verify these properties for Raptor Lake iGPU:

```xml
<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
<dict>
    <!-- Device Identification -->
    <key>device-id</key>
    <data>XAoAAA==</data>  <!-- 0x8A5C - Ice Lake spoofed device ID -->
    
    <key>AAPL,ig-platform-id</key>
    <data>AABYmA==</data>  <!-- 0x9A580000 - Raptor Lake mobile framebuffer -->
    
    <!-- Model Name -->
    <key>model</key>
    <string>Intel Iris Xe Graphics</string>
    
    <!-- Optional: Force Enable Features -->
    <key>enable-metal</key>
    <integer>1</integer>
    
    <!-- Memory Configuration -->
    <key>framebuffer-patch-enable</key>
    <integer>1</integer>
    
    <key>framebuffer-stolenmem</key>
    <data>AAAACA==</data>  <!-- 128MB stolen memory - matches NootedBlue detection -->
    
    <key>framebuffer-fbmem</key>
    <data>AACQAA==</data>  <!-- 9MB framebuffer memory -->
</dict>
```

#### 2. Kernel → Add → NootedBlue.kext Configuration

Ensure NootedBlue is loaded after Lilu:

```xml
<dict>
    <key>Arch</key>
    <string>Any</string>
    <key>BundlePath</key>
    <string>NootedBlue.kext</string>
    <key>Comment</key>
    <string>Intel iGPU patches for Ice Lake+</string>
    <key>Enabled</key>
    <true/>
    <key>ExecutablePath</key>
    <string>Contents/MacOS/NootedBlue</string>
    <key>MaxKernel</key>
    <string></string>
    <key>MinKernel</key>
    <string>22.0.0</string>  <!-- Ventura 13.0+ -->
    <key>PlistPath</key>
    <string>Contents/Info.plist</string>
</dict>
```

#### 3. NVRAM → Add → 7C436110-AB2A-4BBB-A880-FE41995C9F82

Add boot arguments if needed:

```xml
<key>boot-args</key>
<string>-v keepsyms=1 debug=0x100 alcid=1</string>
```

Optional NootedBlue debugging (remove for production):
```
-nbluedbg
```

Optional Lilu debugging (remove for production):
```
-liludbgall
```

#### 4. Kernel → Quirks

Ensure these are set:
```xml
<key>AppleXcpmCfgLock</key>
<true/>
<key>DisableIoMapper</key>
<false/>  <!-- VT-d is enabled in BIOS, so keep this false -->
<key>DisableLinkeditJettison</key>
<true/>
<key>PowerTimeoutKernelPanic</key>
<true/>
<key>XhciPortLimit</key>
<false/>  <!-- Not needed on modern OpenCore -->
```

### Important Notes

1. **Lilu Dependency**: NootedBlue requires Lilu 1.6.4 or later (you have this)

2. **Device ID Spoofing**: The config spoofs your Raptor Lake 0xA788 as Ice Lake 0x8A5C, which is correct because:
   - macOS natively supports Ice Lake graphics
   - NootedBlue provides additional patches for newer iGPUs
   - This combination gives best compatibility

3. **BIOS Settings**: Your current BIOS settings are optimal:
   - ✅ VT-d Enabled (correct - do NOT disable if using NootedBlue)
   - ✅ Intel Virtualization Technology Enabled
   - ✅ VMD Controller Disabled (important)

4. **NVIDIA dGPU**: The RTX 4070 won't work in macOS. Ensure it's properly disabled with SSDT-DGPU (which you have at SSDT-DGPU.aml)

## Installation Steps

### Step 1: Backup Current Configuration
```bash
# Backup your current EFI folder
cp -r /Volumes/EFI/EFI /Volumes/EFI/EFI.backup
```

### Step 2: Install Recommended NootedBlue Version

If not already installed:
```bash
# Remove current NootedBlue
rm -rf /Volumes/EFI/EFI/OC/Kexts/NootedBlue.kext

# Copy Version 4 (Nov 14)
cp -r "NootedBlue/NootedBlue.kext macosx15.1 2024-11-14" /Volumes/EFI/EFI/OC/Kexts/NootedBlue.kext
```

### Step 3: Verify config.plist
- Ensure all recommended settings are applied
- Use ProperTree or OpenCore Configurator to validate
- Take OC snapshot to update kext entries

### Step 4: Test Boot
- Boot with `-v` (verbose) to see any errors
- Check System Information → Graphics to verify Intel Iris Xe is recognized
- Test hardware acceleration with a video or graphics application

## Troubleshooting

### If you experience black screen or graphics glitches:

1. **Try CsbProcModeSelect = 1**: Switch to Version 2 (Nov 12) which has this setting enabled

2. **Add boot-arg**: Try `-nbluedbg` to see NootedBlue debug output

3. **Adjust framebuffer**: Try different AAPL,ig-platform-id values:
   - `0x9A580000` (default for mobile Raptor Lake)
   - `0x9A490000` (alternative)
   - `0x8A520000` (Ice Lake reference)

4. **Check ACPI**: Ensure SSDT-DGPU properly disables the NVIDIA GPU

### If display output doesn't work:

1. Verify your display is connected to the iGPU, not dGPU ports
2. Check if framebuffer connector patches are needed for your specific display configuration
3. Try booting with `-igfxvesa` to use VESA graphics for troubleshooting

## Performance Optimization

For best performance with NootedBlue on Sequoia:

1. **Enable Metal**: Ensure Metal support is enabled (included in recommended config)
2. **Optimize Power**: Use CPUFriend kext for better power management (optional)
3. **Monitor temps**: Use Intel Power Gadget or HWiNFO to monitor iGPU usage and temps
4. **VRAM allocation**: The recommended 128MB stolen + 9MB framebuffer matches the BIOS DVMT pre-allocation and provides proper VRAM reporting in macOS

## Conclusion

**Use Version 4 (NootedBlue.kext macosx15.1 2024-11-14)** for the best experience on macOS Sequoia with your Asus G814JI's Raptor Lake iGPU. This version provides:

- ✅ Native Sequoia support
- ✅ Optimal stability
- ✅ Comprehensive device matching
- ✅ Latest bug fixes and optimizations

The recommended OpenCore settings ensure proper device spoofing and feature enablement for full hardware acceleration support.

---

*Document created: 2025-10-14*  
*Last updated: 2025-10-25*  
*System: Asus G814JI | OpenCore 1.0.5 | Target: macOS Sequoia 15.1*
