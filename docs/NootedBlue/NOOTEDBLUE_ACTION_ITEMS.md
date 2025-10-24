# Action Items - NootedBlue Configuration

## ✅ What's Already Correct

1. **NootedBlue Version**: Version 4 (2024-11-14) is already installed ✅
2. **Kext Loading**: NootedBlue.kext is enabled in config.plist ✅
3. **Lilu Dependency**: Lilu.kext is present and loads before NootedBlue ✅
4. **BIOS Settings**: Properly configured (VMD disabled, VT-d enabled) ✅
5. **NVIDIA Disable**: SSDT-DGPU.aml is present ✅

## ⚠️ Recommended Additions to config.plist

Your current `DeviceProperties → PciRoot(0x0)/Pci(0x2,0x0)` section only has:
```xml
<key>model</key>
<string>Intel Iris Xe (spoofed 0x8A5C)</string>
```

### Add These Properties for Better Performance:

```xml
<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
<dict>
    <!-- Keep existing -->
    <key>model</key>
    <string>Intel Iris Xe Graphics</string>
    
    <!-- ADD THESE: -->
    
    <!-- Device ID Spoof: Raptor Lake → Ice Lake -->
    <key>device-id</key>
    <data>XAoAAA==</data>
    
    <!-- Platform ID for Raptor Lake Mobile -->
    <key>AAPL,ig-platform-id</key>
    <data>AABYmA==</data>
    
    <!-- Enable Metal Support -->
    <key>enable-metal</key>
    <integer>1</integer>
    
    <!-- Framebuffer Configuration -->
    <key>framebuffer-patch-enable</key>
    <integer>1</integer>
    
    <key>framebuffer-stolenmem</key>
    <data>AAAwAQ==</data>
    
    <key>framebuffer-fbmem</key>
    <data>AACQAA==</data>
</dict>
```

### Why These Additions Matter:

| Property | Current | Should Be | Impact |
|----------|---------|-----------|--------|
| `device-id` | ❌ Missing | `0x8A5C` | Required for device spoofing |
| `AAPL,ig-platform-id` | ❌ Missing | `0x9A580000` | Essential for framebuffer |
| `enable-metal` | ❌ Missing | `1` | Improves GPU acceleration |
| `framebuffer-stolenmem` | ❌ Missing | `19MB` | Optimal VRAM allocation |
| `framebuffer-fbmem` | ❌ Missing | `9MB` | Framebuffer memory |

## 🔧 How to Apply Changes

### Option 1: Using ProperTree (Recommended)

1. Mount your EFI partition
2. Open `EFI/OC/config.plist` with ProperTree
3. Navigate to `DeviceProperties → Add → PciRoot(0x0)/Pci(0x2,0x0)`
4. Add the properties listed above
5. Save and reboot

### Option 2: Using OpenCore Configurator

1. Open config.plist in OpenCore Configurator
2. Go to "DeviceProperties" section
3. Under "PciRoot(0x0)/Pci(0x2,0x0)", add the properties
4. Save and reboot

### Option 3: Manual XML Editing

1. Backup your current config.plist
2. Open with a text editor
3. Replace the `PciRoot(0x0)/Pci(0x2,0x0)` section with the complete version
4. Validate XML syntax
5. Save and reboot

## 📋 Complete DeviceProperties Section

Here's the complete section ready to copy:

```xml
<key>DeviceProperties</key>
<dict>
    <key>Add</key>
    <dict>
        <key>PciRoot(0x0)/Pci(0x2,0x0)</key>
        <dict>
            <key>AAPL,ig-platform-id</key>
            <data>AABYmA==</data>
            <key>device-id</key>
            <data>XAoAAA==</data>
            <key>enable-metal</key>
            <integer>1</integer>
            <key>framebuffer-fbmem</key>
            <data>AACQAA==</data>
            <key>framebuffer-patch-enable</key>
            <integer>1</integer>
            <key>framebuffer-stolenmem</key>
            <data>AAAwAQ==</data>
            <key>model</key>
            <string>Intel Iris Xe Graphics</string>
        </dict>
    </dict>
    <key>Delete</key>
    <dict/>
</dict>
```

## 🧪 Testing Steps

After applying changes:

1. **Boot with verbose mode**: Add `-v` to boot-args temporarily
2. **Check for errors**: Watch for graphics-related errors during boot
3. **Verify in System Information**:
   - Apple Menu → About This Mac → System Report
   - Graphics/Displays → Should show "Intel Iris Xe Graphics"
   - Check VRAM amount (should show appropriate value)
4. **Test hardware acceleration**:
   - Play a 4K video in Safari/QuickTime
   - Check Activity Monitor → GPU History (should show activity)

## 🚨 Troubleshooting

If you encounter issues after adding these properties:

### Black Screen / No Display
1. Reset NVRAM (press Space at OpenCore menu, select Reset NVRAM)
2. Try alternative `AAPL,ig-platform-id`:
   - `AABJmg==` (0x9A490000)
   - `AABSmg==` (0x8A520000)

### Graphics Glitches
1. Try lowering `framebuffer-stolenmem` to `AAAwAA==` (15MB)
2. Disable `enable-metal` temporarily

### Performance Issues
1. Switch to NootedBlue Version 2 (CsbProcModeSelect=1)
2. Add boot-arg: `-nbluedbg` to see debug info

## ⏱️ Expected Outcomes

After properly configuring:

✅ **System Information** shows: Intel Iris Xe Graphics  
✅ **About This Mac** displays: Intel graphics card  
✅ **Hardware acceleration** works in video playback  
✅ **Metal apps** can utilize the iGPU  
✅ **Display output** stable at native resolution  

## 📊 Priority Level

| Task | Priority | Time Required | Difficulty |
|------|----------|---------------|------------|
| Add device-id | 🔴 HIGH | 2 min | Easy |
| Add ig-platform-id | 🔴 HIGH | 2 min | Easy |
| Add framebuffer properties | 🟡 MEDIUM | 3 min | Easy |
| Add enable-metal | 🟢 LOW | 1 min | Easy |
| Test configuration | 🔴 HIGH | 10 min | Easy |

## 📝 Status Summary

```
Current Status:
├─ NootedBlue Version: ✅ v4 (Latest)
├─ Kext Installation: ✅ Correct
├─ Basic DeviceProperties: ⚠️  Minimal (just model string)
└─ Full Configuration: ❌ Missing essential properties

After Applying Recommendations:
├─ NootedBlue Version: ✅ v4 (Latest)
├─ Kext Installation: ✅ Correct
├─ Basic DeviceProperties: ✅ Complete
└─ Full Configuration: ✅ Production-ready
```

## 🎯 Final Checklist

Before deploying to production:

- [ ] Backup current EFI folder
- [ ] Add all recommended DeviceProperties
- [ ] Validate config.plist (use ocvalidate or ProperTree)
- [ ] Boot with `-v` and check for errors
- [ ] Verify graphics in System Information
- [ ] Test video playback with hardware acceleration
- [ ] Remove verbose boot-arg once stable
- [ ] Document any custom changes

---

**Next Steps**: Apply the DeviceProperties changes and test boot with verbose mode.

**Reference Files**:
- Full analysis: `NOOTEDBLUE_ANALYSIS.md`
- Quick start: `NOOTEDBLUE_QUICKSTART.md`
- Config snippet: `NOOTEDBLUE_CONFIG_SNIPPET.plist`
- Visual comparison: `NOOTEDBLUE_COMPARISON.md`
