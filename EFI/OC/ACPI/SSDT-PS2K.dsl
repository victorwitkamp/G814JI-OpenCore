/*
 * SSDT-PS2K: Force PS/2 Keyboard Device to be Enabled
 * 
 * This SSDT forces the PS/2 keyboard device to always report as present
 * so that VoodooPS2Controller can attach to it, even during installation.
 *
 * REQUIRED ACPI Rename in config.plist:
 * - _SB.PC00.LPCB.PS2K._STA to XSTA
 *
 * The original _STA method in DSDT returns 0x0F only if (IOST & 0x0400) is true.
 * This override ensures the device is always reported as present (0x0F).
 *
 * Device Path: \_SB.PC00.LPCB.PS2K
 * 
 * Compilation: iasl -ve SSDT-PS2K.dsl
 */
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

