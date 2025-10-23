/*
 * SSDT-DGPU: Properly Disable NVIDIA Discrete GPU
 * 
 * This SSDT properly disables the discrete GPU (NVIDIA RTX 4070) by:
 * 1. Renaming original _PS0, _PS3, _ON, _OFF, _STA methods (via config.plist ACPI patches)
 * 2. Implementing new versions that prevent the GPU from powering on
 * 3. Using _INI to ensure GPU is disabled at boot
 *
 * REQUIRED ACPI Renames in config.plist:
 * - _SB.PC00.PEG1.PEGP._PS0 to XPS0
 * - _SB.PC00.PEG1.PEGP._PS3 to XPS3
 * - _SB.PC00.PEG1.PEGP._ON_ to XON_
 * - _SB.PC00.PEG1.PEGP._OFF to XOFF
 * - _SB.PC00.PEG1.PEGP._STA to XSTA
 *
 * This approach ensures the GPU is both:
 * - Properly powered down (reduces power consumption and heat)
 * - Hidden from the operating system
 *
 * Based on:
 * - ACPI Specification v6.4
 * - Common OpenCore dGPU disable patterns
 * - Analysis of decompiled ACPI tables (DSDT and SSDTs)
 *
 * Device Path: \_SB.PC00.PEG1.PEGP (NVIDIA RTX 4070)
 *
 * Compilation: iasl -ve SSDT-DGPU_v4.dsl
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "DGPUOFF", 0x00000000)
{
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.PC00.PEG1.PEGP.XSTA, MethodObj)    // Renamed original _STA
    External (_SB_.PC00.PEG1.PEGP.XOFF, MethodObj)    // Renamed original _OFF

    // Primary dGPU path: \_SB.PC00.PEG1.PEGP
    Scope (\_SB.PC00.PEG1.PEGP)
    {
        // _INI: Initialize - Called during ACPI device initialization
        // This ensures the GPU is powered off as early as possible
        Method (_INI, 0, NotSerialized)
        {
            // Call the original _OFF method to properly power down the GPU
            If (CondRefOf (\_SB.PC00.PEG1.PEGP.XOFF))
            {
                \_SB.PC00.PEG1.PEGP.XOFF ()
            }
        }

        // _PS0: Power State 0 (D0) - Full On
        // Override this to prevent the device from being powered on
        Method (_PS0, 0, NotSerialized)
        {
            // Do nothing - prevents the GPU from powering on
        }

        // _PS3: Power State 3 (D3) - Off
        // This is the deepest sleep state, effectively powering off the device
        Method (_PS3, 0, NotSerialized)
        {
            // Call the original _OFF method to properly power down
            If (CondRefOf (\_SB.PC00.PEG1.PEGP.XOFF))
            {
                \_SB.PC00.PEG1.PEGP.XOFF ()
            }
        }

        // _OFF: Power Off
        // Call the original _OFF to ensure proper power down
        Method (_OFF, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.PEG1.PEGP.XOFF))
            {
                \_SB.PC00.PEG1.PEGP.XOFF ()
            }
        }

        // _ON: Power On  
        // Override to prevent powering on
        Method (_ON, 0, NotSerialized)
        {
            // Do nothing - prevents the GPU from powering on
        }

        // _STA: Status
        // Returns 0 to indicate the device is not present
        // This hides the device from the operating system
        Method (_STA, 0, NotSerialized)
        {
            Return (Zero)
        }
    }
}
