# PS2 Keyboard Fix for ASUS ROG Strix G814JI

## Problem

The built-in PS2 keyboard was not working in macOS despite having VoodooPS2Controller.kext enabled in the OpenCore configuration.

## Root Cause Analysis

After examining the DecompiledACPI folder, the PS2K device was found at path `\_SB.PC00.LPCB.H_EC.PS2K` with the following characteristics:

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

While `IOST` is initialized to `0xFFFF` in the DSDT (so `IOST & 0x0400 = 0x0400`, which is non-zero), the conditional check can sometimes fail or the device might not be properly initialized by macOS.

## Solution

Created **SSDT-PS2K.aml** which overrides the `_STA` method to always return `0x0F` (device present, enabled, visible, and functioning) when running macOS.

### SSDT Implementation

```asl
DefinitionBlock ("", "SSDT", 2, "ASUS", "PS2K", 0x00000000)
{
    External (_SB_.PC00.LPCB.H_EC.PS2K, DeviceObj)

    Method (_SB.PC00.LPCB.H_EC.PS2K._STA, 0, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            Return (0x0F)
        }
        Else
        {
            Return (0x0F)
        }
    }
}
```

This SSDT:
1. References the existing PS2K device
2. Overrides its `_STA` method
3. Always returns `0x0F` to ensure the device is detected

## Files Added/Modified

1. **EFI/OC/ACPI/SSDT-PS2K.dsl** - Source ACPI table
2. **EFI/OC/ACPI/SSDT-PS2K.aml** - Compiled ACPI table (116 bytes)
3. **EFI/OC/config.plist** - Added SSDT-PS2K.aml to the ACPI/Add section with enabled=true

## Compilation

To recompile the SSDT if modifications are needed:

```bash
cd EFI/OC/ACPI
iasl -oa SSDT-PS2K.dsl
```

This will generate SSDT-PS2K.aml which should be placed in the ACPI folder.

## Verification

After applying this fix:
1. The PS2K device should show status 0x0F in IORegistryExplorer
2. VoodooPS2Controller.kext should successfully attach to the device
3. The built-in keyboard should be functional immediately after boot

## Technical Details

- **Device Path**: `\_SB.PC00.LPCB.H_EC.PS2K`
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
