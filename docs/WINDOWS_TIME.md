# Windows Time Zone Fix for Dual Boot Systems

## Overview

When dual-booting Windows with macOS (or other Unix-like systems), you may encounter time synchronization issues. This occurs because Windows assumes the hardware clock is set to local time, while macOS and Unix systems assume it's set to UTC (Coordinated Universal Time).

## Problem

- Windows shows incorrect time after booting from macOS
- Time jumps forward or backward when switching between operating systems
- Inconsistent time zones between Windows and macOS

## Solution

Configure Windows to use UTC time like macOS does by modifying the Windows Registry.

### Steps

1. **Open Registry Editor**
   - Press `Win+S` to open Search
   - Type `regedit` and press `Enter`
   - Click "Yes" if prompted by User Account Control

2. **Navigate to TimeZoneInformation Key**
   ```
   HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation
   ```

3. **Create New Registry Value**
   - Right-click in the right pane
   - Select "New" → "DWORD (32-bit) Value"
   - Name it: `RealTimeIsUniversal`

4. **Set the Value**
   - Double-click the newly created `RealTimeIsUniversal` entry
   - Set the value to `1`
   - Click "OK"

5. **Restart Your Computer**
   - Reboot Windows to apply the changes

## Alternative Method (Command Line)

You can also apply this fix using Command Prompt (run as Administrator):

```cmd
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /t REG_DWORD /d 1 /f
```

## Registry File

A registry file (`TimeZoneInformation.reg`) is available in this directory for easy application:

```reg
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation]
"RealTimeIsUniversal"=dword:00000001
```

To use the registry file:
1. Download and run `TimeZoneInformation.reg`
2. Click "Yes" to confirm the registry modification
3. Reboot your system

## Verification

After applying the fix and rebooting:
1. Boot into Windows and verify the time is correct
2. Restart into macOS and check the time
3. Both systems should now maintain consistent time

## Notes

- This change tells Windows to treat the hardware clock as UTC instead of local time
- This is the recommended approach for dual-boot systems
- The fix is permanent until manually reversed
- No negative impact on Windows functionality

## Troubleshooting

If issues persist:
- Ensure both operating systems have internet time synchronization enabled
- Check that the correct time zone is set in both systems
- Verify the registry value was applied correctly