# Quick Start Guide: Fixing AE_ALREADY_EXISTS Errors

## What This Fix Does

✅ Fixes `AE_ALREADY_EXISTS` errors for SSDT-DGPU_v4 and SSDT-PS2K
✅ Properly disables NVIDIA GPU to save power and reduce heat
✅ Ensures PS/2 keyboard works in installer and macOS

## What You Need To Do

The fixed SSDT files are already compiled and ready, but **you must update your config.plist** to add ACPI binary patches. Without these patches, the SSDTs won't work.

## Step-by-Step Instructions

### Step 1: Backup Your Config

```bash
cp EFI/OC/config.plist EFI/OC/config.plist.backup
```

### Step 2: Add ACPI Patches

Open `EFI/OC/config.plist` with ProperTree, OpenCore Configurator, or a text editor.

Navigate to: **ACPI → Patch**

Add these 6 patches (copy the XML blocks from `docs/ACPI_RENAMES.md`):

1. **Rename _PS0 to XPS0** in PEG1.PEGP
2. **Rename _PS3 to XPS3** in PEG1.PEGP  
3. **Rename _ON to XON** in PEG1.PEGP
4. **Rename _OFF to XOFF** in PEG1.PEGP
5. **Rename _STA to XSTA** in PEG1.PEGP
6. **Rename _STA to XSTA** in PS2K

### Step 3: Verify SSDT Files Are Enabled

In config.plist, under **ACPI → Add**, ensure these are present and enabled:
- ✅ SSDT-DGPU_v4.aml (Enabled: true)
- ✅ SSDT-PS2K.aml (Enabled: true)

### Step 4: Save and Reboot

1. Save config.plist
2. Reboot your system
3. Boot into macOS

## Verification

### Check 1: Boot Logs (No Errors)

```bash
grep "AE_ALREADY" /path/to/bootlog.txt
```

Should return **nothing** (no errors).

### Check 2: GPU is Disabled

1. Open **System Information** (About This Mac → System Report)
2. Click **Graphics** in the sidebar
3. You should see **only Intel UHD Graphics**
4. ❌ NVIDIA GPU should NOT be listed

### Check 3: Keyboard Works

1. Test keyboard in macOS
2. Test keyboard in Recovery (Cmd+R at boot)
3. Test keyboard in installer (if fresh installing)

## Troubleshooting

### "I still see AE_ALREADY_EXISTS errors"

→ The ACPI patches are not applied correctly. Double-check:
- All 6 patches are added to config.plist
- All 6 patches are **enabled** (Enabled: true)
- Find/Replace values match exactly (see ACPI_RENAMES.md)
- OemTableId and TableSignature are correct

### "NVIDIA GPU is still visible"

→ GPU disable patches not applied. Check:
- All 5 GPU patches are enabled (patches 1-5)
- OemTableId is `U2dQZWc=` (base64 for "SgPeg")
- TableSignature is `U1NEVA==` (base64 for "SSDT")

### "Keyboard doesn't work"

→ PS2K patch not applied. Check:
- PS2K patch is enabled (patch 6)
- VoodooPS2Controller.kext is in EFI/OC/Kexts
- VoodooPS2Controller.kext is enabled in config.plist

## Full Documentation

For complete details, see:

- **`docs/FIX_SUMMARY.md`** - Complete overview of what was fixed and why
- **`docs/ACPI_RENAMES.md`** - Detailed guide with XML examples for config.plist patches
- **`docs/DGPU_DISABLE.md`** - Technical details about GPU disabling
- **`docs/PS2_KEYBOARD_FIX.md`** - Technical details about keyboard fix

## Need Help?

If you're stuck:

1. Read the full documentation in the `docs/` folder
2. Check your config.plist formatting (use ProperTree to avoid XML errors)
3. Compare your patches with the examples in ACPI_RENAMES.md
4. Check boot logs for specific error messages

## Summary

The fixed SSDT files (SSDT-DGPU_v4.aml and SSDT-PS2K.aml) are ready to use, but require ACPI renames in config.plist. Without these renames, the SSDTs will fail to load with AE_ALREADY_EXISTS errors.

**The key change**: Instead of the SSDTs directly defining methods, they now work with renamed versions of the original methods, preventing conflicts.

**Time required**: 10-15 minutes to add the patches to config.plist
**Difficulty**: Easy (just copy-paste XML)
**Risk**: Low (config.plist.backup protects you)

Good luck! 🚀
