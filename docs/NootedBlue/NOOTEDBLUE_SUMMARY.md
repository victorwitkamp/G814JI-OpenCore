
### Your System
- **Model**: Asus ROG Strix G814JI
- **CPU**: Intel Core i9-13980HX (Raptor Lake)
- **iGPU**: Intel UHD Graphics (Device ID: 0xA788)
- **Target**: macOS Sequoia 15.1

### Version Comparison Summary

| Version | Date | SDK | Device Support | Recommendation |
|---------|------|-----|----------------|----------------|
| v1 | Nov 04 | 14.0 | 1x 0xA788 | Use only for Sonoma |
| v2 | Nov 12 | 15.1 | 2x 0xA788 | Alternative for performance |
| v3 | Nov 13 | 15.1 | 1x 0xA788 | Superseded by v4 |
| **v4** | **Nov 14** | **15.1** | **2x 0xA788** | **RECOMMENDED ⭐** |

**Required additions** :
Device Path:     PciRoot(0x0)/Pci(0x2,0x0)
- `device-id`: 0x8A5C (Ice Lake spoof) (macOS has native Ice Lake support. NootedBlue adds Raptor Lake patches)
- `AAPL,ig-platform-id`: 0x9A580000 (Raptor Lake mobile)
- `framebuffer-stolenmem`: 19MB
- `framebuffer-fbmem`: 9MB
- `enable-metal`: 1

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


### Technical Details

**Device Spoofing Strategy**:
- Physical: Raptor Lake 0xA788 (0x9A788086)

