# SSDT Error Fix Summary

## Problem
The boot log (bootlog_2.txt) showed 3 ACPI table load failures:
1. **RplSBTbt**: Namespace lookup failure (unrelated to this fix)
2. **DGPUOFF**: AE_ALREADY_EXISTS error for _PS0 method
3. **PS2K**: AE_ALREADY_EXISTS error for _STA method

## Root Cause Analysis

### DGPU Issue
The SSDT-DGPU_v4 was trying to:
1. Rename methods (_PS0, _PS3, _ON, _OFF, _STA) via config.plist
2. Add new implementations of these methods

**Problem**: The original `_SB.PC00.PEG1.PEGP` device only contains `Name (_ADR, Zero)` with NO power management methods. The ACPI renames failed silently (nothing to rename), but the SSDT still tried to create these methods, causing AE_ALREADY_EXISTS conflicts.

### PS2K Issue
The SSDT-PS2K was adding a _STA method to override the original, but this created a conflict even though the rename was supposed to happen first.

## Solution Implemented

### 1. SSDT-DGPU_v4.dsl
**Changed from**: Rename-and-replace approach  
**Changed to**: Direct method addition

```asl
// Now uses:
- External (_SB_.PC00.PEG1.POFF, MethodObj)  // Existing method from DSDT
- Method (_OFF, 0, NotSerialized) { ... }    // New method
- Method (_STA, 0, NotSerialized) { Return (Zero) }  // Hide device
- Method (_INI, 0, NotSerialized) { ... }    // Init at boot
```

**Result**: 
- AML size: 306 → 214 bytes (30% smaller)
- No renames needed
- Uses existing PEG1.POFF() method for proper power-down

### 2. SSDT-PS2K.dsl
**Changed from**: Simple override  
**Changed to**: Safe override with fallback

```asl
// Now includes:
Method (_STA, 0, NotSerialized)
{
    If (CondRefOf (\_SB.PC00.LPCB.PS2K.XSTA))
    {
        Local0 = \_SB.PC00.LPCB.PS2K.XSTA ()  // Call original if exists
    }
    Return (0x0F)  // Always return present
}
```

**Result**:
- AML size: 91 → 171 bytes (added safety check)
- More robust
- Preserves side effects of original method

### 3. config.plist
Disabled 5 DGPU-related ACPI renames (patches 2-6):
- `_PS0 to XPS0` in PEG1.PEGP ❌
- `_PS3 to XPS3` in PEG1.PEGP ❌
- `_ON to XON` in PEG1.PEGP ❌
- `_OFF to XOFF` in PEG1.PEGP ❌
- `_STA to XSTA` in PEG1.PEGP ❌

Kept PS2K rename (patch 7):
- `_STA to XSTA` in PS2K ✅ (correctly targeted with specific pattern)

## Files Modified
1. `EFI/OC/ACPI/SSDT-DGPU_v4.dsl` - Rewritten
2. `EFI/OC/ACPI/SSDT-DGPU_v4.aml` - Recompiled (214 bytes)
3. `EFI/OC/ACPI/SSDT-PS2K.dsl` - Enhanced
4. `EFI/OC/ACPI/SSDT-PS2K.aml` - Recompiled (171 bytes)
5. `EFI/OC/config.plist` - 5 patches disabled

## Expected Outcome

### Before (bootlog_2.txt)
```
[3.550477]: ACPI Exception: AE_ALREADY_EXISTS, (SSDT: DGPUOFF) while loading table
[3.595737]: ACPI Exception: AE_ALREADY_EXISTS, (SSDT: PS2K) while loading table
[3.611352]: ACPI Error: 3 table load failures, 24 successful
```

### After (expected)
```
[No AE_ALREADY_EXISTS errors for DGPUOFF and PS2K]
[ACPI Error: 1 table load failure, 26 successful]
(or possibly 0 table load failures, 27 successful)
```

## Testing Instructions

### 1. Copy Updated Files
Ensure these files are in place:
- `EFI/OC/ACPI/SSDT-DGPU_v4.aml` (214 bytes)
- `EFI/OC/ACPI/SSDT-PS2K.aml` (171 bytes)
- `EFI/OC/config.plist` (with disabled patches)

### 2. Boot and Check Logs
```bash
# View boot log
log show --predicate 'process == "kernel"' --style syslog --source --last boot | grep -i acpi
```

Look for:
- ✅ No "AE_ALREADY_EXISTS" errors for DGPUOFF/PS2K
- ✅ Reduced "table load failures" count
- ✅ SSDT tables loading successfully

### 3. Verify Functionality

**DGPU (Discrete GPU)**:
```bash
# Check GPU is not visible
system_profiler SPDisplaysDataType | grep -i nvidia
# Should return nothing

# Check no NVIDIA drivers loaded
kextstat | grep -i nvidia
# Should return nothing
```

**PS2K (Keyboard)**:
- Keyboard should work during installation
- Keyboard should work after boot
- Check in IORegistryExplorer: `_SB.PC00.LPCB.PS2K` should be present with _STA = 0x0F

### 4. Monitor Power/Heat
- GPU should be powered off
- Lower power consumption
- Less heat from GPU area

## Troubleshooting

### If errors persist:

1. **Clear NVRAM**: Reset NVRAM from OpenCore boot menu
2. **Verify files**: Check file sizes match (214 and 171 bytes)
3. **Check config**: Ensure patches 2-6 show `<false/>` under Enabled
4. **Boot with verbose mode**: Add `-v` to boot-args to see detailed ACPI loading

### If GPU is still active:

1. Check SSDT-DGPU_v4.aml is enabled in config.plist
2. Verify PEG1.POFF() method exists: `ioreg -l | grep -i peg1`
3. Consider adding boot-arg: `-wegnoegpu` (alternative GPU disable method)

### If keyboard doesn't work:

1. Check VoodooPS2Controller.kext is loaded
2. Verify PS2K device is present: Use IORegistryExplorer
3. Check SSDT-PS2K.aml is enabled in config.plist
4. Verify patch 7 (PS2K _STA rename) is still enabled

## Additional Notes

- The RplSBTbt error (for RP25) is unrelated to DGPU/PS2K and may require separate investigation
- If you have a different GPU model, the fix should still work (path is the same)
- The PS2K fix ensures keyboard works during macOS installation
- Both fixes follow OpenCore best practices for minimal ACPI patching

## References
- See `VALIDATION.md` for detailed validation procedures
- ACPI Specification 6.4
- Dortania's OpenCore Install Guide
- Original issue: bootlog_2.txt lines 324-336
