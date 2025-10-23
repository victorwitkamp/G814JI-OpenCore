# PS2 Keyboard Fix for ASUS ROG Strix G814JI

## Problem

The built-in PS2 keyboard was not working in macOS despite having VoodooPS2Controller.kext enabled in the OpenCore configuration. The SSDT-PS2K.aml was failing to load with an `AE_ALREADY_EXISTS` error.

## Root Cause Analysis

After examining the DecompiledACPI folder, the PS2K device was found at path `\_SB.PC00.LPCB.PS2K` (NOT under H_EC) with the following characteristics:

```asl
Device (PS2K)
{
    Name (_HID, EisaId ("ATK3001"))  // _HID: Hardware ID
    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        If ((IOST & 0x0400))
        {
            Return (0x0F)
        }
        Else
        {
            Return (Zero)
        }
    }
    // ... resource definitions ...
}
```

The device has:
- **Hardware ID**: ATK3001 (ASUS-specific keyboard controller)
- **Compatible ID**: PNP030B (Standard PS/2 keyboard)
- **Conditional Status**: The `_STA` method checks `IOST & 0x0400` to determine if the device should be enabled

**The Problem**: The original SSDT-PS2K attempted to override the `_STA` method, but since this method already exists in the DSDT, ACPI returned an `AE_ALREADY_EXISTS` error and refused to load the SSDT.

## Solution

The fixed **SSDT-PS2K.aml** works in conjunction with an ACPI binary patch that renames the original `_STA` method to `XSTA`, allowing our override to load successfully.

### Required Setup

1. **ACPI Binary Patch in config.plist**: Renames the original `_STA` method to `XSTA` (see `ACPI_RENAMES.md`)
2. **SSDT-PS2K.aml**: Defines new `_STA` method that always returns `0x0F`

### SSDT Implementation

```asl
DefinitionBlock ("", "SSDT", 2, "ASUS", "PS2K", 0x00000000)
{
    // Correct PS2K path per DSDT: \_SB.PC00.LPCB.PS2K
    External (_SB_.PC00.LPCB.PS2K, DeviceObj)
    External (_SB_.PC00.LPCB.PS2K.XSTA, MethodObj)    // Renamed original _STA

    Scope (_SB.PC00.LPCB.PS2K)
    {
        // Force device present so VoodooPS2Keyboard attaches even in installer
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            // Always return 0x0F (device present, enabled, functioning, visible)
            // Original _STA checks (IOST & 0x0400), but we want it always enabled
            Return (0x0F)
        }
    }
}
```

This SSDT:
1. References the existing PS2K device at the correct path
2. Declares the renamed original `XSTA` method (for reference, though not called)
3. Defines new `_STA` method that always returns `0x0F`

## Files Added/Modified

1. **EFI/OC/ACPI/SSDT-PS2K.dsl** - Source ACPI table (updated with correct path and External declarations)
2. **EFI/OC/ACPI/SSDT-PS2K.aml** - Compiled ACPI table (91 bytes, reduced from 116 bytes)
3. **EFI/OC/config.plist** - Must include:
   - SSDT-PS2K.aml in the ACPI/Add section with enabled=true
   - ACPI binary patch to rename `_STA` to `XSTA` in PS2K device (see `ACPI_RENAMES.md`)

## Compilation

To recompile the SSDT if modifications are needed:

```bash
cd EFI/OC/ACPI
iasl -ve SSDT-PS2K.dsl
```

This will generate SSDT-PS2K.aml which should be placed in the ACPI folder.

## Verification

After applying this fix with the required ACPI rename:
1. Boot logs should show NO `AE_ALREADY_EXISTS` errors for PS2K
2. The PS2K device should show status 0x0F in IORegistryExplorer
3. VoodooPS2Controller.kext should successfully attach to the device
4. The built-in keyboard should be functional immediately after boot
5. Keyboard should work in the installer and recovery environment

## Technical Details

- **Device Path**: `\_SB.PC00.LPCB.PS2K` (corrected from previous H_EC.PS2K path)
- **Original HID**: ATK3001 (ASUS ATK device)
- **Compatible ID**: PNP030B (Standard PS/2 keyboard)
- **Status Values**:
  - `0x0F` = Present + Enabled + Show in UI + Functioning
  - `0x00` = Not present
- **Kext Required**: VoodooPS2Controller.kext with VoodooPS2Keyboard.kext plugin

## References

- [OpenCore ACPI Documentation](https://dortania.github.io/Getting-Started-With-ACPI/)
- [VoodooPS2 GitHub](https://github.com/acidanthera/VoodooPS2)
- [ACPI Specification](https://uefi.org/specifications)
- See `ACPI_RENAMES.md` for detailed instructions on the required binary patches
