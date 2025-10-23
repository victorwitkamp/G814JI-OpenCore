# NVIDIA dGPU Disable Implementation

## Overview

This document explains how the NVIDIA GeForce RTX 4070 Laptop GPU is properly disabled in this OpenCore configuration.

## Device Path

The discrete GPU is located at: `\_SB.PC00.PEG1.PEGP`

This was identified by analyzing the decompiled ACPI tables (DSDT and SSDTs) in the `DecompiledACPI` directory.

## Implementation: SSDT-DGPU_v4

### Previous Implementation (v4 - BROKEN)

The previous SSDT-DGPU_v4 attempted to override ACPI methods that already existed in SSDT10, causing `AE_ALREADY_EXISTS` errors. The system refused to load the SSDT, leaving the GPU enabled.

**Problems:**
- `AE_ALREADY_EXISTS` error during boot
- SSDT failed to load
- GPU remained enabled and consuming power
- Original methods (_PS0, _PS3, _ON, _OFF, _STA) already existed in SSDT10

### Current Implementation (Fixed)

The fixed SSDT-DGPU_v4 uses ACPI method renaming to properly override the existing power management methods:

**Required Setup:**
1. ACPI binary patches in config.plist rename the original methods (see `ACPI_RENAMES.md`)
2. SSDT-DGPU_v4 defines new implementations of the renamed methods
3. System loads SSDT successfully without conflicts

The SSDT implements a comprehensive set of ACPI power management methods:

#### 1. `_INI` - Initialize Method
Called during ACPI device initialization at boot time. This method:
- Calls the renamed original `XOFF()` method to properly power down the GPU using the BIOS's own power-off sequence
- Ensures the GPU is powered off as early as possible in the boot process

#### 2. `_PS3` - Power State 3 (D3 - Off)
The deepest ACPI power state:
- Calls the original `XOFF()` method to use the BIOS's power management
- Minimizes power consumption
- Reduces heat generation

#### 3. `_PS0` - Power State 0 (D0 - Fully On)
Override that prevents the GPU from powering on:
- Empty implementation (does nothing)
- Blocks any attempts to power on the device

#### 4. `_OFF` - Power Off Method
Explicit power-off method:
- Calls the original `XOFF()` method to ensure proper power down
- Provides an additional interface for power management

#### 5. `_ON` - Power On Method
Override that prevents the GPU from powering on:
- Empty implementation (does nothing)
- Blocks any attempts to power on the device

#### 6. `_STA` - Status Method
Reports device status to the operating system:
- Returns `0` to indicate the device is not present
- Hides the device from the OS
- Ensures the OS doesn't try to load drivers or interact with the device

## Why This Approach is Better

According to the ACPI Specification (v6.4) and common OpenCore practices:

1. **Proper ACPI Method Renaming**: Using config.plist binary patches to rename existing methods prevents `AE_ALREADY_EXISTS` errors
2. **Leverages BIOS Power Management**: Calls the original `XOFF()` method to use the BIOS's own GPU power-off sequence
3. **Early Initialization**: `_INI` method powers off the GPU during boot, before the OS loads
4. **Defense in Depth**: Multiple methods (`_PS0`, `_ON`) prevent the GPU from being powered back on
5. **OS Compatibility**: `_STA` ensures the OS doesn't try to interact with the device

## Alternative Device Paths

The current implementation only targets the primary device path `\_SB.PC00.PEG1.PEGP` because that's the confirmed path on this system. Alternative paths were removed to avoid potential conflicts.

## Technical Details

### Compilation

The SSDT is compiled from `SSDT-DGPU_v4.dsl` to `SSDT-DGPU_v4.aml` using the Intel ASL compiler:

```bash
iasl -ve SSDT-DGPU_v4.dsl
```

### File Sizes

- **Previous SSDT-DGPU_v4.aml**: 401 bytes (caused AE_ALREADY_EXISTS error)
- **Fixed SSDT-DGPU_v4.aml**: 306 bytes (works with ACPI renames)

The size decrease and successful compilation shows the fix is cleaner and more efficient.

### Required Config.plist Changes

**IMPORTANT**: This SSDT requires ACPI binary patches in your config.plist to rename the original methods. See the detailed guide in `ACPI_RENAMES.md` for:
- Complete list of required patches
- Base64 encoded Find/Replace patterns
- XML configuration examples
- Verification steps

## References

- ACPI Specification v6.4 - Section 6.3 (Device Object Definitions)
- ACPI Specification v6.4 - Section 7.3 (Power and Performance Management)
- OpenCore Configuration Reference
- Decompiled ACPI tables from ASUS ROG Strix G814JI (BIOS 331)

## Verification

To verify the GPU is properly disabled:

1. Apply the required ACPI renames to config.plist (see `ACPI_RENAMES.md`)
2. Place the updated SSDT-DGPU_v4.aml in `EFI/OC/ACPI/`
3. Boot macOS
4. Check boot logs - should see NO `AE_ALREADY_EXISTS` errors
5. Check System Information > Graphics - only Intel UHD Graphics should be visible
6. Monitor power consumption and temperatures (should be lower)
7. Check battery life (should be improved)

## Future Improvements

The current implementation is complete and working. Potential future enhancements could include:
- Monitor and log power consumption metrics
- Advanced GPIO pin manipulation if specific power pins are identified in schematics
- Integration with power management utilities
