# 📖 NootedBlue Setup - Complete Guide Index

## Quick Navigation

### 🚀 Start Here

**New to NootedBlue?** → [Quick Start Guide](NOOTEDBLUE_QUICKSTART.md)

**Need detailed analysis?** → [Full Analysis Document](NOOTEDBLUE_ANALYSIS.md)

**Want visual comparison?** → [Version Comparison Chart](NOOTEDBLUE_COMPARISON.md)

**Ready to configure?** → [Action Items Checklist](NOOTEDBLUE_ACTION_ITEMS.md)

### 📄 Document Overview

| Document | Purpose | Best For |
|----------|---------|----------|
| **[NOOTEDBLUE_QUICKSTART.md](NOOTEDBLUE_QUICKSTART.md)** | Fast setup guide | Getting started quickly |
| **[NOOTEDBLUE_ANALYSIS.md](NOOTEDBLUE_ANALYSIS.md)** | In-depth technical analysis | Understanding all details |
| **[NOOTEDBLUE_COMPARISON.md](NOOTEDBLUE_COMPARISON.md)** | Visual version comparison | Deciding which version |
| **[NOOTEDBLUE_ACTION_ITEMS.md](NOOTEDBLUE_ACTION_ITEMS.md)** | Configuration checklist | Implementation steps |
| **[NOOTEDBLUE_CONFIG_SNIPPET.plist](NOOTEDBLUE_CONFIG_SNIPPET.plist)** | Ready-to-use config | Copy-paste configuration |

---

## 🎯 Executive Summary

### Your System
- **Model**: Asus ROG Strix G814JI
- **CPU**: Intel Core i9-13980HX (Raptor Lake)
- **iGPU**: Intel UHD Graphics (Device ID: 0xA788)
- **Target**: macOS Sequoia 15.1

### The Recommendation

```
╔════════════════════════════════════════════════════════════╗
║  RECOMMENDED: NootedBlue.kext macosx15.1 2024-11-14       ║
║                                                            ║
║  ✅ Version 4 is already installed                        ║
║  ✅ Best for macOS Sequoia                                ║
║  ⚠️  Needs additional config.plist properties             ║
╚════════════════════════════════════════════════════════════╝
```

### What You Need to Do

1. **Already Done ✅**:
   - NootedBlue v4 (2024-11-14) installed
   - Lilu.kext present and enabled
   - BIOS configured correctly

2. **Action Required ⚠️**:
   - Add complete DeviceProperties to config.plist
   - Test boot with verbose mode
   - Verify graphics acceleration

**Time Required**: ~15 minutes
**Difficulty**: Easy (copy-paste configuration)

---

## 📚 Reading Guide

### For Quick Setup (5 minutes)

1. Read: [NOOTEDBLUE_QUICKSTART.md](NOOTEDBLUE_QUICKSTART.md)
2. Copy properties from: [NOOTEDBLUE_CONFIG_SNIPPET.plist](NOOTEDBLUE_CONFIG_SNIPPET.plist)
3. Follow: [NOOTEDBLUE_ACTION_ITEMS.md](NOOTEDBLUE_ACTION_ITEMS.md) testing steps

### For Complete Understanding (30 minutes)

1. Start with: [NOOTEDBLUE_ANALYSIS.md](NOOTEDBLUE_ANALYSIS.md)
2. Review: [NOOTEDBLUE_COMPARISON.md](NOOTEDBLUE_COMPARISON.md)
3. Implement from: [NOOTEDBLUE_ACTION_ITEMS.md](NOOTEDBLUE_ACTION_ITEMS.md)
4. Reference: [NOOTEDBLUE_CONFIG_SNIPPET.plist](NOOTEDBLUE_CONFIG_SNIPPET.plist)

### For Troubleshooting

1. Check: [NOOTEDBLUE_ACTION_ITEMS.md](NOOTEDBLUE_ACTION_ITEMS.md) → Troubleshooting section
2. Review: [NOOTEDBLUE_ANALYSIS.md](NOOTEDBLUE_ANALYSIS.md) → Troubleshooting section
3. Try: Alternative NootedBlue Version 2 (if needed)

---

## 🔑 Key Findings

### Version Analysis Results

| Version | Build Date | Target macOS | Status |
|---------|-----------|--------------|--------|
| v1 | 2024-11-04 | Sonoma 14.0 | ⚠️ Outdated for Sequoia |
| v2 | 2024-11-12 | Sequoia 15.1 | ⚡ Performance variant |
| v3 | 2024-11-13 | Sequoia 15.1 | 📦 Superseded |
| **v4** | **2024-11-14** | **Sequoia 15.1** | **✅ Recommended** |

### Critical Configuration Values

```
Device Path:     PciRoot(0x0)/Pci(0x2,0x0)
Device ID:       0x8A5C (Ice Lake spoof)
Platform ID:     0x9A580000 (Raptor Lake mobile)
Stolen Memory:   19MB
FB Memory:       9MB
Metal Support:   Enabled
```

### Performance Expectations

- ✅ 4K HEVC playback @ 60fps
- ✅ Hardware video encoding/decoding
- ✅ Metal GPU acceleration
- ✅ Full display output support
- ⚠️ NVIDIA RTX 4070 disabled (no macOS support)

---

## 📋 Complete Setup Checklist

Use this checklist to track your progress:

### Pre-Installation
- [x] Located NootedBlue kext versions in repository
- [x] Identified recommended version (v4)
- [x] Read documentation
- [ ] Backed up current EFI folder

### Installation
- [x] NootedBlue v4 is installed in EFI/OC/Kexts/
- [x] Lilu.kext is present and enabled
- [x] config.plist includes NootedBlue in kernel add list

### Configuration
- [ ] Added `device-id` to DeviceProperties
- [ ] Added `AAPL,ig-platform-id` to DeviceProperties
- [ ] Added framebuffer properties
- [ ] Added `enable-metal` property
- [ ] Validated config.plist syntax

### Testing
- [ ] Booted with `-v` verbose mode
- [ ] Verified no graphics errors in boot log
- [ ] Checked System Information shows Intel Iris Xe
- [ ] Tested video playback with hardware acceleration
- [ ] Verified Metal GPU usage in Activity Monitor

### Finalization
- [ ] Removed verbose boot-arg
- [ ] Documented any custom changes
- [ ] Created EFI backup with working configuration
- [ ] Updated README with your findings (optional)

---

## 🎓 Technical Details

### Why Version 4?

1. **Latest Build**: Most recent patches and bug fixes
2. **Native SDK**: Built with macOS 15.1 SDK (Sequoia-specific)
3. **Best Device Matching**: Enhanced IOPCIPrimaryMatch list
4. **Stable Configuration**: Conservative CsbProcModeSelect (0)
5. **Production Ready**: No experimental features

### Why These Config Properties?

| Property | Purpose |
|----------|---------|
| `device-id` | Spoofs Raptor Lake as Ice Lake for native driver support |
| `AAPL,ig-platform-id` | Tells macOS which framebuffer to use |
| `framebuffer-stolenmem` | VRAM allocation from system memory |
| `framebuffer-fbmem` | Dedicated framebuffer memory |
| `enable-metal` | Enables Metal API for GPU acceleration |

### Alternative Configurations

If Version 4 doesn't work optimally:

**Option A**: Try Version 2 (Enhanced CSB Mode)
- CsbProcModeSelect = 1
- May improve performance in some scenarios
- Trade-off: slightly more experimental

**Option B**: Adjust framebuffer settings
- Try `AAPL,ig-platform-id` = 0x9A490000
- Reduce stolenmem to 15MB
- Disable enable-metal temporarily

---

## 🆘 Support Resources

### Built-in Documentation
- [README.md](README.md) - Main repository documentation
- `/NootedBlue/` folder - Contains all 4 kext versions

### Community Resources
- [NootedBlue GitHub](https://github.com/ChefKissInc/NootedBlue)
- [OpenCore Documentation](https://dortania.github.io/OpenCore-Install-Guide/)
- [Raptor Lake Guide](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/alder-lake.html)

### Troubleshooting Tools
- `ocvalidate` - Validate config.plist
- ProperTree - Edit plist files
- IORegistryExplorer - Check device properties
- Hackintool - Graphics configuration helper

---

## 💡 Tips & Best Practices

### Before Making Changes
1. ✅ Always backup your working EFI
2. ✅ Test with verbose mode first
3. ✅ Make one change at a time
4. ✅ Document what you change

### During Configuration
1. ✅ Use proper plist editors (ProperTree)
2. ✅ Validate XML syntax
3. ✅ Take OC snapshot after kext changes
4. ✅ Keep old config as `.backup`

### After Changes
1. ✅ Boot with `-v` to see errors
2. ✅ Check System Information
3. ✅ Test hardware acceleration
4. ✅ Monitor for stability issues

---

## 📊 Current Status

```
System Component Status:
├─ Hardware: Asus G814JI ✅
├─ CPU: Intel i9-13980HX (Raptor Lake) ✅
├─ iGPU: Intel UHD 0xA788 ✅
├─ OpenCore: 1.0.3 ✅
├─ Target OS: macOS Sequoia 15.1 ✅
├─ NootedBlue: v4 (2024-11-14) ✅ Installed
├─ Lilu: 1.6.4+ ✅ Present
├─ BIOS: Configured correctly ✅
└─ DeviceProperties: ⚠️ Needs completion

Action Required:
└─ Add full DeviceProperties to config.plist
   └─ See: NOOTEDBLUE_ACTION_ITEMS.md
```

---

## 🎉 Expected Final Result

After completing the setup:

```
✅ macOS Sequoia boots successfully
✅ Intel Iris Xe Graphics recognized
✅ Hardware video acceleration working
✅ Metal GPU compute available
✅ Display output stable
✅ System Information shows correct GPU
✅ Activity Monitor shows GPU usage
✅ 4K video playback smooth
```

---

## 📝 Document Maintenance

**Created**: 2025-10-14  
**Last Updated**: 2025-10-14  
**Version**: 1.0  
**Status**: Complete ✅

**Next Review**: After macOS Sequoia 15.2 release

---

## 🙏 Acknowledgments

- **ChefKiss Inc.** - NootedBlue kext development
- **Acidanthera** - Lilu and OpenCore frameworks
- **Dortania** - OpenCore installation guides
- **Community** - Testing and feedback

---

**Ready to proceed?** → Start with [NOOTEDBLUE_QUICKSTART.md](NOOTEDBLUE_QUICKSTART.md)

**Need more details?** → Read [NOOTEDBLUE_ANALYSIS.md](NOOTEDBLUE_ANALYSIS.md)

**Just want to configure?** → Follow [NOOTEDBLUE_ACTION_ITEMS.md](NOOTEDBLUE_ACTION_ITEMS.md)
