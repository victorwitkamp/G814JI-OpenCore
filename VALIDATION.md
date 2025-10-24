# SSDT Validation and Testing Guide

## Changes Made

### Fixed ACPI Errors
This fix addresses the following errors from bootlog_2.txt:

1. **Line 328**: `ACPI Exception: AE_ALREADY_EXISTS, (SSDT: DGPUOFF) while loading table`
2. **Line 334**: `ACPI Exception: AE_ALREADY_EXISTS, (SSDT: PS2K) while loading table`

### Modified Files

#### 1. SSDT-DGPU_v4.dsl
- **Before**: 306 bytes AML, tried to rename non-existent methods
- **After**: 214 bytes AML, adds methods directly
- **Changes**:
  - Removed dependencies on renamed methods (XSTA, XOFF, XPS0, XPS3, XON)
  - Added direct _OFF, _STA, and _INI methods
  - Uses PEG1.POFF() method for proper power-down
  - Simplified approach: no renames needed

#### 2. SSDT-PS2K.dsl
- **Before**: 91 bytes AML, basic override
- **After**: 171 bytes AML, safe override with fallback
- **Changes**:
  - Added CondRefOf check for XSTA
  - Calls original method if rename worked (preserves side effects)
  - Always returns 0x0F to force device visibility

#### 3. config.plist
- Disabled 5 DGPU-related ACPI renames:
  - Patch 2: `_PS0 to XPS0` in PEG1.PEGP
  - Patch 3: `_PS3 to XPS3` in PEG1.PEGP
  - Patch 4: `_ON to XON` in PEG1.PEGP
  - Patch 5: `_OFF to XOFF` in PEG1.PEGP
  - Patch 6: `_STA to XSTA` in PEG1.PEGP
- Kept PS2K rename (Patch 7) enabled

## Validation Steps

### 1. Compilation Check
```bash
cd EFI/OC/ACPI
iasl -ve SSDT-DGPU_v4.dsl  # Should show: Compilation successful
iasl -ve SSDT-PS2K.dsl     # Should show: Compilation successful
```

### 2. File Validation
- SSDT-DGPU_v4.aml: 214 bytes
- SSDT-PS2K.aml: 171 bytes
- Both should be ACPI Machine Language files

### 3. Boot Test
After applying these changes, check the boot log for:

**Should NOT appear**:
- `ACPI Error: [_PS0] Namespace lookup failure, AE_ALREADY_EXISTS`
- `ACPI Exception: AE_ALREADY_EXISTS, (SSDT: DGPUOFF) while loading table`
- `ACPI Exception: AE_ALREADY_EXISTS, (SSDT: PS2K) while loading table`

**Should appear**:
- All SSDT tables loading successfully
- Reduced count of "table load failures" (should go from 3 to 1 or 0)

### 4. Functionality Test

#### DGPU (Discrete GPU)
- Check GPU is not visible in System Information > Graphics
- Verify power consumption is lower (use Intel Power Gadget or similar)
- Check no NVIDIA drivers loaded: `kextstat | grep -i nvidia` (should be empty)

#### PS2K (Keyboard)
- Keyboard should work during installation and after boot
- VoodooPS2Controller should attach successfully
- Check in IORegistryExplorer: _SB.PC00.LPCB.PS2K should be present

## Expected Results

1. **Boot Log**: No more AE_ALREADY_EXISTS errors for DGPUOFF and PS2K
2. **DGPU**: Device hidden from OS, powered off
3. **PS2K**: Device always visible, keyboard functional
4. **Overall**: Cleaner ACPI initialization, no namespace conflicts

## Technical Details

### Why the Original Approach Failed

#### DGPU Issue
The `_SB.PC00.PEG1.PEGP` device in the DSDT only contains:
```asl
Device (PEGP)
{
    Name (_ADR, Zero)  // _ADR: Address
}
```

There are NO _PS0, _PS3, _ON, _OFF, or _STA methods to rename. The config.plist renames failed silently, but the SSDT still tried to create these methods, causing conflicts.

#### PS2K Issue
The PS2K device exists with a _STA method:
```asl
Method (_STA, 0, NotSerialized)
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
```

The rename pattern in config.plist is very specific and should work, but adding a CondRefOf check makes the SSDT more robust.

### New Approach

1. **DGPU**: Add methods directly without renaming
   - Uses existing PEG1.POFF() method from DSDT
   - Simple and effective

2. **PS2K**: Safe override with fallback
   - Tries to call original if rename worked
   - Always returns 0x0F regardless

## Troubleshooting

If errors persist:

1. **Verify config.plist changes**:
   ```bash
   grep -A2 "Rename _PS0 to XPS0" EFI/OC/config.plist
   # Should show <false/>
   ```

2. **Check SSDT files are updated**:
   ```bash
   ls -lh EFI/OC/ACPI/SSDT-{DGPU_v4,PS2K}.aml
   # DGPU: 214 bytes, PS2K: 171 bytes
   ```

3. **Verify SSDTs are enabled** in config.plist:
   - SSDT-DGPU_v4.aml should have Enabled = true
   - SSDT-PS2K.aml should have Enabled = true

4. **Check ACPI load order** in config.plist:
   - SSDTs should load after base tables
   - Order matters for External references

## References

- ACPI Specification 6.4: Power Management
- OpenCore Configuration Guide: ACPI Patches
- Dortania's OpenCore Install Guide: Disabling dGPU
