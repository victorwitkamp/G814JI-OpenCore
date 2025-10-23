# Fix Summary: AE_ALREADY_EXISTS Errors

## Issue Description

The boot process was showing `AE_ALREADY_EXISTS` errors for two SSDT files:
1. SSDT-DGPU_v4.aml (DGPUOFF) - Failed to load, leaving NVIDIA GPU enabled
2. SSDT-PS2K.aml - Failed to load, potentially affecting keyboard functionality

## Root Cause

Both SSDTs attempted to define ACPI methods that already existed in the system's ACPI tables:

### SSDT-DGPU_v4
- Tried to define `_PS0`, `_PS3`, `_ON`, `_OFF`, and `_STA` methods
- These methods already existed in SSDT10 (OEM Table ID: "SgPeg")
- ACPI specification doesn't allow redefining existing methods
- Result: `AE_ALREADY_EXISTS` error, SSDT not loaded, GPU remained enabled

### SSDT-PS2K
- Tried to define `_STA` method for `\_SB.PC00.LPCB.PS2K`
- This method already existed in the DSDT
- ACPI specification doesn't allow redefining existing methods
- Result: `AE_ALREADY_EXISTS` error, SSDT not loaded

## Solution

The fix uses ACPI method renaming - a standard technique in OpenCore/Hackintosh configurations:

1. **ACPI Binary Patches** (in config.plist):
   - Rename existing methods to alternate names (e.g., `_PS0` → `XPS0`)
   - Applied during ACPI table loading, before our SSDTs are processed

2. **Updated SSDTs**:
   - Reference the renamed methods via External declarations
   - Define new implementations using the original method names
   - Can call the renamed original methods if needed

### For SSDT-DGPU_v4

**5 ACPI renames required** (in SSDT10 table only):
- `_PS0` → `XPS0`
- `_PS3` → `XPS3`
- `_ON_` → `XON_`
- `_OFF` → `XOFF`
- `_STA` → `XSTA`

**Updated SSDT**:
- Calls renamed `XOFF()` method to use BIOS's own GPU power-off sequence
- Overrides `_PS0`, `_ON` with empty implementations to prevent power-on
- Overrides `_STA` to return 0 (device not present)
- Size reduced from 401 bytes to 306 bytes (cleaner implementation)

### For SSDT-PS2K

**1 ACPI rename required** (in DSDT only):
- `_STA` → `XSTA` (with context pattern to target only PS2K device)

**Updated SSDT**:
- Defines new `_STA` that always returns 0x0F (device present and enabled)
- Ensures VoodooPS2Controller can attach even during installation
- Size reduced from 116 bytes to 91 bytes (cleaner implementation)

## Files Changed

### Modified
1. `EFI/OC/ACPI/SSDT-DGPU_v4.dsl` - Updated with External declarations and proper method calls
2. `EFI/OC/ACPI/SSDT-DGPU_v4.aml` - Recompiled (306 bytes)
3. `EFI/OC/ACPI/SSDT-PS2K.dsl` - Updated with External declarations and correct device path
4. `EFI/OC/ACPI/SSDT-PS2K.aml` - Recompiled (91 bytes)
5. `docs/DGPU_DISABLE.md` - Updated with new implementation details
6. `docs/PS2_KEYBOARD_FIX.md` - Updated with new implementation details
7. `README.md` - Added important notes about required config.plist changes

### New
1. `docs/ACPI_RENAMES.md` - Complete guide for adding required ACPI binary patches to config.plist

## Required User Action

**IMPORTANT**: These fixed SSDTs will NOT work without updating config.plist!

The user must add 6 ACPI binary patches to `config.plist` under `ACPI → Patch`:
- 5 patches for DGPU methods (targeting SSDT10 table)
- 1 patch for PS2K _STA method (targeting DSDT table)

Complete instructions with:
- Hex patterns for Find/Replace
- Base64 encoded values
- XML configuration examples
- Verification steps

Are provided in: **`docs/ACPI_RENAMES.md`**

## Expected Results

After applying the config.plist patches:

1. **Boot Logs**:
   - ✅ No `AE_ALREADY_EXISTS` errors for DGPUOFF
   - ✅ No `AE_ALREADY_EXISTS` errors for PS2K
   - ✅ All ACPI tables load successfully

2. **GPU Behavior**:
   - ✅ NVIDIA GPU is properly disabled
   - ✅ Only Intel UHD Graphics visible in System Information
   - ✅ Lower power consumption
   - ✅ Reduced heat generation
   - ✅ Improved battery life

3. **Keyboard Behavior**:
   - ✅ PS/2 keyboard works immediately after boot
   - ✅ Keyboard works in installer and recovery
   - ✅ VoodooPS2Controller successfully attaches

## Technical Background

### Why Renaming Works

1. ACPI tables are loaded in sequence: DSDT → SSDT1 → SSDT2 → ... → Custom SSDTs
2. Binary patches are applied to tables as they're loaded into memory
3. When SSDT10 is loaded, its `_PS0` method is renamed to `XPS0` before parsing
4. When our SSDT-DGPU_v4 is loaded, no conflict exists - it can define `_PS0`
5. Our `_PS0` is now the active method; the original is accessible as `XPS0`

### Why This is Better Than Alternative Approaches

❌ **Dropping entire SSDT10**: Would lose important system functionality
❌ **Using _DSM or other workarounds**: Unreliable for power management
❌ **Creating entirely new power management**: Complex and risky
✅ **Method renaming**: Standard practice, well-tested, minimal system impact

## Verification Steps

1. Apply ACPI renames to config.plist (see ACPI_RENAMES.md)
2. Reboot system
3. Check boot logs: `grep AE_ALREADY bootlog.txt` should return nothing
4. Check System Information → Graphics: Only Intel UHD should be listed
5. Test keyboard functionality in macOS and installer
6. Monitor temperatures and battery life (should improve)

## References

- [OpenCore Configuration Reference](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf) - ACPI Patches section
- [Dortania's ACPI Guide](https://dortania.github.io/Getting-Started-With-ACPI/) - Method renaming
- [ACPI Specification v6.4](https://uefi.org/specifications) - Power states and device objects
- Decompiled ACPI tables in `DecompiledACPI/` directory

## Troubleshooting

### If GPU is still visible after applying patches:

1. Verify all 5 GPU patches are enabled in config.plist
2. Check OemTableId matches exactly: `U2dQZWc=` (base64 for "SgPeg")
3. Verify TableSignature is `U1NEVA==` (base64 for "SSDT")
4. Check boot log for patch application messages

### If keyboard doesn't work after applying patches:

1. Verify PS2K patch is enabled in config.plist
2. Check VoodooPS2Controller.kext is loaded
3. Verify device path in IORegistryExplorer: `\_SB.PC00.LPCB.PS2K`
4. Check that _STA method now returns 0x0F in IORegistryExplorer

### If AE_ALREADY_EXISTS still appears:

1. The patches may not be targeting the correct table
2. Check decompiled ACPI to verify method names and paths
3. Ensure Find patterns match exactly
4. Consider disabling patches one at a time to identify the issue
