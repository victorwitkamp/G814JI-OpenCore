# ACPI Renames Required for SSDT Patches

This document explains the ACPI binary renames required in `config.plist` to fix the `AE_ALREADY_EXISTS` errors with SSDT-DGPU_v4 and SSDT-PS2K.

## Problem

The SSDT-DGPU_v4 and SSDT-PS2K files were causing `AE_ALREADY_EXISTS` errors during boot because they attempted to define ACPI methods (_PS0, _PS3, _ON, _OFF, _STA) that already existed in the system's ACPI tables (SSDT10 and DSDT).

## Solution

Use ACPI binary renames to rename the existing methods before our SSDT patches define the new implementations. This is done by adding binary patches to the `ACPI -> Patch` section of `config.plist`.

## Required ACPI Renames

**UPDATE (2025-10-24)**: The _OFF rename has been updated to use a more specific byte pattern to prevent accidentally renaming other _OFF methods in the system. See the detailed explanation in section 4 below.

### For SSDT-DGPU_v4 (Disable NVIDIA GPU)

Add the following 5 binary patches to rename the original power management methods in `\_SB.PC00.PEG1.PEGP`:

#### 1. Rename _PS0 to XPS0

```
Comment: Rename _PS0 to XPS0 in _SB.PC00.PEG1.PEGP
Find: 5F 50 53 30
Replace: 58 50 53 30
TableSignature: 53534454
OemTableId: 5367506567
```

**Hex explanation:**
- `5F 50 53 30` = "_PS0" in ASCII
- `58 50 53 30` = "XPS0" in ASCII
- `53534454` = "SSDT" in reverse byte order
- `5367506567` = "SgPeg" in ASCII (SSDT10's OEM Table ID)

#### 2. Rename _PS3 to XPS3

```
Comment: Rename _PS3 to XPS3 in _SB.PC00.PEG1.PEGP
Find: 5F 50 53 33
Replace: 58 50 53 33
TableSignature: 53534454
OemTableId: 5367506567
```

**Hex explanation:**
- `5F 50 53 33` = "_PS3" in ASCII
- `58 50 53 33` = "XPS3" in ASCII

#### 3. Rename _ON_ to XON_

```
Comment: Rename _ON to XON in _SB.PC00.PEG1.PEGP
Find: 5F 4F 4E 5F
Replace: 58 4F 4E 5F
TableSignature: 53534454
OemTableId: 5367506567
```

**Hex explanation:**
- `5F 4F 4E 5F` = "_ON_" in ASCII
- `58 4F 4E 5F` = "XON_" in ASCII

#### 4. Rename _OFF to XOFF

**IMPORTANT**: This patch uses a more specific pattern to ensure it only renames the _OFF method in the PEGP device and not other _OFF methods throughout the system.

```
Comment: Rename _OFF to XOFF in _SB.PC00.PEG1.PEGP
Find: 5B 27 5C 57 57 4D 54 14 49 05 5F 4F 46 46 08
Replace: 5B 27 5C 57 57 4D 54 14 49 05 58 4F 46 46 08
TableSignature: 53534454
```

**Hex explanation:**
- `5B 27` = Release opcode (ACPI bytecode)
- `5C 57 57 4D 54` = "\WWMT" (mutex name unique to PEGP context)
- `14 49 05` = Method opcode with package length
- `5F 4F 46 46` = "_OFF" in ASCII → `58 4F 46 46` = "XOFF" in ASCII
- `08` = Serialized flag

**Why this pattern is specific:**
The generic `5F 4F 46 46` pattern would match ANY _OFF method in the SSDT tables, potentially causing incorrect renames. This longer pattern includes the Release(\WWMT) instruction and method signature that is unique to the PEGP device's _OFF method, ensuring only the correct method is renamed.

#### 5. Rename _STA to XSTA

```
Comment: Rename _STA to XSTA in _SB.PC00.PEG1.PEGP
Find: 5F 53 54 41
Replace: 58 53 54 41
TableSignature: 53534454
OemTableId: 5367506567
```

**Hex explanation:**
- `5F 53 54 41` = "_STA" in ASCII
- `58 53 54 41` = "XSTA" in ASCII

### For SSDT-PS2K (Force PS/2 Keyboard Present)

Add the following binary patch to rename the original _STA method in `\_SB.PC00.LPCB.PS2K`:

#### 6. Rename _STA to XSTA in PS2K

```
Comment: Rename _STA to XSTA in _SB.PC00.LPCB.PS2K
Find: 41 54 4B 33 30 30 31 08 5F 43 49 44 0C 41 D0 03 0B 14 0B 5F 53 54 41
Replace: 41 54 4B 33 30 30 31 08 5F 43 49 44 0C 41 D0 03 0B 14 0B 58 53 54 41
TableSignature: 44534454
```

**Hex explanation:**
- This is a more specific patch that targets only the PS2K device's _STA method
- `44534454` = "DSDT" in reverse byte order
- The Find pattern includes the Hardware ID (ATK3001) to ensure we only rename the correct _STA method
- `5F 53 54 41` at the end = "_STA"
- `58 53 54 41` at the end = "XSTA"

## Implementation in config.plist

Add these patches to your `config.plist` under `ACPI -> Patch` section:

```xml
<key>ACPI</key>
<dict>
    <key>Add</key>
    <array>
        <!-- Your existing SSDT entries -->
    </array>
    <key>Patch</key>
    <array>
        <!-- DGPU Renames -->
        <dict>
            <key>Comment</key>
            <string>Rename _PS0 to XPS0 in _SB.PC00.PEG1.PEGP</string>
            <key>Count</key>
            <integer>0</integer>
            <key>Enabled</key>
            <true/>
            <key>Find</key>
            <data>X1BTMA==</data>
            <key>Limit</key>
            <integer>0</integer>
            <key>Mask</key>
            <data></data>
            <key>OemTableId</key>
            <data>U2dQZWc=</data>
            <key>Replace</key>
            <data>WFBTMA==</data>
            <key>ReplaceMask</key>
            <data></data>
            <key>Skip</key>
            <integer>0</integer>
            <key>TableLength</key>
            <integer>0</integer>
            <key>TableSignature</key>
            <data>U1NEVA==</data>
        </dict>
        <dict>
            <key>Comment</key>
            <string>Rename _PS3 to XPS3 in _SB.PC00.PEG1.PEGP</string>
            <key>Count</key>
            <integer>0</integer>
            <key>Enabled</key>
            <true/>
            <key>Find</key>
            <data>X1BTMw==</data>
            <key>Limit</key>
            <integer>0</integer>
            <key>Mask</key>
            <data></data>
            <key>OemTableId</key>
            <data>U2dQZWc=</data>
            <key>Replace</key>
            <data>WFBTMw==</data>
            <key>ReplaceMask</key>
            <data></data>
            <key>Skip</key>
            <integer>0</integer>
            <key>TableLength</key>
            <integer>0</integer>
            <key>TableSignature</key>
            <data>U1NEVA==</data>
        </dict>
        <dict>
            <key>Comment</key>
            <string>Rename _ON to XON in _SB.PC00.PEG1.PEGP</string>
            <key>Count</key>
            <integer>0</integer>
            <key>Enabled</key>
            <true/>
            <key>Find</key>
            <data>X09OXw==</data>
            <key>Limit</key>
            <integer>0</integer>
            <key>Mask</key>
            <data></data>
            <key>OemTableId</key>
            <data>U2dQZWc=</data>
            <key>Replace</key>
            <data>WE9OXw==</data>
            <key>ReplaceMask</key>
            <data></data>
            <key>Skip</key>
            <integer>0</integer>
            <key>TableLength</key>
            <integer>0</integer>
            <key>TableSignature</key>
            <data>U1NEVA==</data>
        </dict>
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
        <dict>
            <key>Comment</key>
            <string>Rename _STA to XSTA in _SB.PC00.PEG1.PEGP</string>
            <key>Count</key>
            <integer>0</integer>
            <key>Enabled</key>
            <true/>
            <key>Find</key>
            <data>X1NUQQ==</data>
            <key>Limit</key>
            <integer>0</integer>
            <key>Mask</key>
            <data></data>
            <key>OemTableId</key>
            <data>U2dQZWc=</data>
            <key>Replace</key>
            <data>WFNUQQ==</data>
            <key>ReplaceMask</key>
            <data></data>
            <key>Skip</key>
            <integer>0</integer>
            <key>TableLength</key>
            <integer>0</integer>
            <key>TableSignature</key>
            <data>U1NEVA==</data>
        </dict>
        <!-- PS2K Rename -->
        <dict>
            <key>Comment</key>
            <string>Rename _STA to XSTA in _SB.PC00.LPCB.PS2K</string>
            <key>Count</key>
            <integer>0</integer>
            <key>Enabled</key>
            <true/>
            <key>Find</key>
            <data>QVRLMzAwMQhfQ0lEDEHQAws</data>
            <key>Limit</key>
            <integer>0</integer>
            <key>Mask</key>
            <data></data>
            <key>OemTableId</key>
            <data></data>
            <key>Replace</key>
            <data>QVRLMzAwMQhfQ0lEDEHQAwsUC1hTVEE=</data>
            <key>ReplaceMask</key>
            <data></data>
            <key>Skip</key>
            <integer>0</integer>
            <key>TableLength</key>
            <integer>0</integer>
            <key>TableSignature</key>
            <data>RFNEVA==</data>
        </dict>
    </array>
</dict>
```

## Base64 Data Values

For easy copy-paste, here are the base64-encoded values:

| Purpose | Key | Base64 Value |
|---------|-----|--------------|
| "_PS0" | Find | `X1BTMA==` |
| "XPS0" | Replace | `WFBTMA==` |
| "_PS3" | Find | `X1BTMw==` |
| "XPS3" | Replace | `WFBTMw==` |
| "_ON_" | Find | `X09OXw==` |
| "XON_" | Replace | `WE9OXw==` |
| "_OFF specific pattern" | Find | `WydcV1dNVBRJBV9PRkYI` |
| "XOFF specific pattern" | Replace | `WydcV1dNVBRJBVhPRkYI` |
| "_STA" (PEGP) | Find | `X1NUQQ==` |
| "XSTA" (PEGP) | Replace | `WFNUQQ==` |
| "SSDT" | TableSignature | `U1NEVA==` |
| "SgPeg" | OemTableId | `U2dQZWc=` |
| "DSDT" | TableSignature | `RFNEVA==` |
| PS2K _STA context | Find | `QVRLMzAwMQhfQ0lEDEHQAws=` |
| PS2K XSTA replace | Replace | `QVRLMzAwMQhfQ0lEDEHQAwsUC1hTVEE=` |

## Verification

After adding these patches to your config.plist:

1. Restart the system
2. Check boot logs for absence of `AE_ALREADY_EXISTS` errors
3. Verify NVIDIA GPU is disabled:
   - Open System Information > Graphics
   - Only Intel UHD Graphics should be visible
   - No NVIDIA GPU listed
4. Verify PS/2 keyboard works in installer and OS

## Technical Background

### Why Renaming is Necessary

ACPI does not allow redefining methods that already exist in the namespace. When multiple tables (DSDT, SSDT, or custom SSDTs) define the same method path, the ACPI interpreter throws an `AE_ALREADY_EXISTS` error and refuses to load the table.

### How Renaming Works

1. Binary patches in config.plist are applied to the ACPI tables as they're loaded
2. The "Find" pattern identifies the exact bytes to replace
3. The "Replace" pattern changes those bytes to the new name
4. Our custom SSDT can then define the original method name
5. The custom SSDT's method is called instead of the renamed original

### Why These Specific Patterns

- **TableSignature**: Ensures we only patch SSDT or DSDT tables, not other ACPI tables
- **OemTableId**: For GPU methods, we target only SSDT10 (OEM Table ID "SgPeg") to avoid accidentally renaming other _STA, _PS0, etc. methods in the system
- **Context in Find pattern**: For PS2K, we include the device's Hardware ID to ensure we only rename the specific _STA method we want

## References

- [OpenCore Configuration Reference](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf)
- [Dortania's ACPI Guide](https://dortania.github.io/Getting-Started-With-ACPI/)
- ACPI Specification v6.4
- Decompiled ACPI tables in `DecompiledACPI/` directory
