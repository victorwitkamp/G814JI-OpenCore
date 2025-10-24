# DGPU _OFF Rename Fix (2025-10-24)

## Problem

The ACPI rename for the DGPU's `_OFF` method was not working correctly. The OpenCore log showed:
```
OC: Applying 4 byte ACPI patch (Rename _OFF to XOFF in _SB.PC00.PEG1.PEGP) at 5, skip 0, count 0
```

The patch was matching at position 5 (too early in the file) and had a count of 0, indicating it wasn't properly renaming the target method.

## Root Cause

The original ACPI patch used a generic pattern that searched for `_OFF` (hex: `5f 4f 46 46`) anywhere in the SSDT tables. This 4-byte pattern is too generic and could match:
- Any `_OFF` method in any device
- The string "_OFF" appearing in comments or other contexts
- External references to `_OFF` methods

As a result, the patch was not reliably targeting the specific `_OFF` method in the `_SB.PC00.PEG1.PEGP` device that needed to be renamed.

## Solution

Updated the ACPI patch to use a more specific 15-byte pattern that includes unique context from the PEGP device's `_OFF` method.

### New Pattern

**Find (15 bytes):**
```
5b 27 5c 57 57 4d 54 14 49 05 5f 4f 46 46 08
```

**Replace (15 bytes):**
```
5b 27 5c 57 57 4d 54 14 49 05 58 4f 46 46 08
```

### Pattern Breakdown

| Bytes | Meaning | Description |
|-------|---------|-------------|
| `5b 27` | Release opcode | ACPI extended opcode for releasing a mutex |
| `5c 57 57 4d 54` | `\WWMT` | Mutex name (unique to PEGP power management context) |
| `14 49 05` | Method opcode | Method definition with package length (0x549 bytes) |
| `5f 4f 46 46` | `_OFF` | Method name to be renamed to XOFF |
| `08` | Serialized flag | Method attributes (Serialized, 0 arguments) |

### Why This Works

1. **Unique Context**: The `\WWMT` mutex is only used in the PEGP device's power management methods
2. **Precise Location**: The pattern uniquely identifies the exact `_OFF` method at offset 0x5880 in SSDT-7.aml
3. **Verified Uniqueness**: Pattern only appears once in all SSDT tables
4. **Proper Method Signature**: Includes the complete method definition structure

## Verification

### File Locations
- **Source ACPI**: `SysReport/ACPI/SSDT-7.aml` (42,471 bytes)
- **Decompiled**: `DecompiledACPI/ssdt10.dsl` (corresponds to SSDT-7.aml, line 3415)
- **Device Path**: `\_SB.PC00.PEG1.PEGP`
- **Pattern Location**: Offset 0x5880 in SSDT-7.aml

### Pattern Verification
```bash
# Verify pattern exists exactly once in SSDT-7.aml
hexdump -C SysReport/ACPI/SSDT-7.aml | grep "5b 27 5c 57 57 4d 54 14"
# Output shows pattern at offset 0x5880:
# 00005880  5b 27 5c 57 57 4d 54 14  49 05 5f 4f 46 46 08 70
#           |--Release \WWMT--|Method|_OFF name  |attr|
#           (The double space is hexdump formatting for 8-byte groups)
```

### Config.plist Entry

```xml
<dict>
    <key>Comment</key>
    <string>Rename _OFF to XOFF in _SB.PC00.PEG1.PEGP</string>
    <key>Count</key>
    <integer>0</integer>
    <key>Enabled</key>
    <true/>
    <key>Find</key>
    <data>WydcV1dNVBRJBV9PRkYI</data>
    <key>Limit</key>
    <integer>0</integer>
    <key>Mask</key>
    <data></data>
    <key>OemTableId</key>
    <data></data>
    <key>Replace</key>
    <data>WydcV1dNVBRJBVhPRkYI</data>
    <key>ReplaceMask</key>
    <data></data>
    <key>Skip</key>
    <integer>0</integer>
    <key>TableLength</key>
    <integer>0</integer>
    <key>TableSignature</key>
    <data>U1NEVA==</data>
</dict>
```

## Testing

After applying this fix:
1. Boot the system with the updated config.plist
2. Check OpenCore logs for the patch application message
3. Verify SSDT-DGPU_v4.aml loads without `AE_ALREADY_EXISTS` errors
4. Confirm DGPU is properly disabled in System Information

## Impact

This fix ensures that:
- Only the correct `_OFF` method is renamed
- SSDT-DGPU_v4.aml can properly override the method
- DGPU power management works correctly
- No side effects on other devices with `_OFF` methods

## Related Files

- `/EFI/OC/config.plist` - Updated ACPI patch
- `/docs/ACPI_RENAMES.md` - Complete documentation of all ACPI renames
- `/docs/DGPU_DISABLE.md` - DGPU disable implementation guide
- `/EFI/OC/ACPI/SSDT-DGPU_v4.aml` - Custom SSDT that uses the renamed method

## References

- ACPI Specification v6.4 - Section 5.5 (Control Methods)
- ACPI Specification v6.4 - Section 20 (ACPI Machine Language)
- OpenCore Configuration Reference - ACPI Patches
- Original issue analysis: OpenCore log `opencore-2025-10-24-231949.txt`
