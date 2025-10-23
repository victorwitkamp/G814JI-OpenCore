# NVIDIA dGPU Disable Implementation

## Overview

This document explains how the NVIDIA GeForce RTX 4070 Laptop GPU is properly disabled in this OpenCore configuration.

## Device Path

The discrete GPU is located at: `\_SB.PC00.PEG1.PEGP`

This was identified by analyzing the decompiled ACPI tables (DSDT and SSDTs) in the `DecompiledACPI` directory.

## Implementation: SSDT-DGPU_v4

### Previous Implementation (v4 and earlier)

The original SSDT-DGPU_v4 only implemented the `_STA` method returning `0`, which:
- **Hides** the GPU from the operating system
- Does **NOT** properly power down the GPU
- Can lead to:
  - Higher power consumption
  - Unnecessary heat generation
  - Reduced battery life

### Current Implementation (Improved)

The improved SSDT-DGPU_v4 implements a comprehensive set of ACPI power management methods:

#### 1. `_INI` - Initialize Method
Called during ACPI device initialization at boot time. This method:
- Immediately calls `_PS3()` to put the GPU in the deepest power state
- Ensures the GPU is powered off as early as possible in the boot process

#### 2. `_PS3` - Power State 3 (D3 - Off)
The deepest ACPI power state:
- Indicates the device is in the "Off" state
- Minimizes power consumption
- Reduces heat generation

#### 3. `_PS0` - Power State 0 (D0 - Fully On)
Override that prevents the GPU from powering on:
- Empty implementation (does nothing)
- Blocks any attempts to power on the device

#### 4. `_OFF` - Power Off Method
Explicit power-off method:
- Calls `_PS3()` to ensure the device is in D3 state
- Provides an additional interface for power management

#### 5. `_ON` - Power On Method
Override that prevents the GPU from powering on:
- Empty implementation (does nothing)
- Blocks any attempts to power on the device

#### 6. `_STA` - Status Method
Reports device status to the operating system:
- Returns `0` to indicate the device is not present
- Hides the device from the OS
- Checks `PRES()` method if available to verify physical presence

## Why This Approach is Better

According to the ACPI Specification (v6.4) and common OpenCore practices:

1. **Proper Power Management**: Using `_PS3` and `_OFF` methods ensures the device is actually powered down, not just hidden
2. **Early Initialization**: `_INI` method powers off the GPU during boot, before the OS loads
3. **Defense in Depth**: Multiple methods (`_PS0`, `_ON`) prevent the GPU from being powered back on
4. **OS Compatibility**: `_STA` ensures the OS doesn't try to interact with the device

## Alternative Device Paths

The SSDT also handles alternative device paths for maximum compatibility:
- `\_SB.PCI0.PEG0.PEGP`
- `\_SB.PCI0.PEGP`

These alternative paths are included because different BIOS versions or configurations might use different naming schemes.

## Technical Details

### Compilation

The SSDT is compiled from `SSDT-DGPU_v4.dsl` to `SSDT-DGPU_v4.aml` using the Intel ASL compiler:

```bash
iasl -ve SSDT-DGPU_v4.dsl
```

### File Sizes

- **Original SSDT-DGPU_v4.aml**: 188 bytes (only `_STA` method)
- **Improved SSDT-DGPU_v4.aml**: 401 bytes (comprehensive power management)

The size increase is justified by the significantly improved power management functionality.

## References

- ACPI Specification v6.4 - Section 6.3 (Device Object Definitions)
- ACPI Specification v6.4 - Section 7.3 (Power and Performance Management)
- OpenCore Configuration Reference
- Decompiled ACPI tables from ASUS ROG Strix G814JI (BIOS 331)

## Verification

To verify the GPU is properly disabled:

1. Boot macOS
2. Check System Information > Graphics
3. Only Intel UHD Graphics should be visible
4. Monitor power consumption and temperatures
5. Compare battery life with previous implementation

## Future Improvements

Potential future improvements could include:
- GPIO pin manipulation if power enable pins are identified
- NVRAM reset methods
- Additional device-specific power management registers
