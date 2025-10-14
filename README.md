# Asus ROG Strix G814JI OpenCore

**Current macOS version:** Ventura (13) → Sequoia (15.1)

**Current OpenCore version:** 1.0.3

**BIOS Version:** 331

**GOP Version:** 17.0.1081

**EC Version:** G814JIEC.051

## 🆕 macOS Sequoia Graphics Configuration

For Intel Graphics (NootedBlue) setup on macOS Sequoia, see:
- **📖 [Complete NootedBlue Guide](NOOTEDBLUE_README.md)** - Start here for navigation
- **🚀 [Quick Start Guide](NOOTEDBLUE_QUICKSTART.md)** - Fast setup (5 minutes)
- **📊 [Full Analysis](NOOTEDBLUE_ANALYSIS.md)** - Detailed technical information
- **✅ [Action Items](NOOTEDBLUE_ACTION_ITEMS.md)** - Configuration checklist

**TL;DR**: Use `NootedBlue.kext macosx15.1 2024-11-14` (already installed) with additional DeviceProperties from the guides.

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

iGPU - Intel(R) UHD Graphics (NootedBlue with proper Raptor Lake device ID 0xA788)
  - **For macOS Sequoia**: Use NootedBlue.kext version from `2024-11-14` (see [NootedBlue Analysis](NOOTEDBLUE_ANALYSIS.md))

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

### Intel Graphics (iGPU) Setup for macOS Sequoia

This system uses **NootedBlue** kext for Intel Raptor Lake graphics support on macOS Sequoia.

**Quick Start**:
- ✅ **Recommended Version**: `NootedBlue.kext macosx15.1 2024-11-14` (latest, most stable)
- 📁 **Location**: `NootedBlue/` folder contains 4 versions for comparison
- 📖 **Full Guide**: See [NOOTEDBLUE_ANALYSIS.md](NOOTEDBLUE_ANALYSIS.md) for detailed comparison and OpenCore configuration
- ⚡ **Quick Reference**: See [NOOTEDBLUE_QUICKSTART.md](NOOTEDBLUE_QUICKSTART.md) for fast setup

**Key Points**:
1. Raptor Lake iGPU (0xA788) is spoofed as Ice Lake (0x8A5C)
2. Version from Nov 14, 2024 provides best Sequoia compatibility
3. NVIDIA RTX 4070 dGPU must be disabled (handled by SSDT-DGPU.aml)
4. VMD Controller must be disabled in BIOS

### ACPI
### Kexts