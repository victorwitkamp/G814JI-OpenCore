/*
 * SSDT-DGPU: Properly Disable NVIDIA Discrete GPU
 * 
 * This SSDT disables the discrete GPU (NVIDIA RTX 4070) by:
 * 1. Adding _OFF method to power down the GPU
 * 2. Adding _STA method to hide the device from the OS (returns 0)
 * 3. Using _INI to call _OFF at initialization
 *
 * NO ACPI Renames Required - This SSDT does not rename any methods.
 * The original PEGP device has no power management methods, so we simply add them.
 *
 * This approach ensures the GPU is:
 * - Powered down (reduces power consumption and heat)
 * - Hidden from the operating system
 *
 * Device Path: \_SB.PC00.PEG1.PEGP (NVIDIA RTX 4070)
 *
 * Compilation: iasl -ve SSDT-DGPU_v4.dsl
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "DGPUOFF", 0x00000000)
{
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.PC00.PEG1.POFF, MethodObj)    // PEG1 power off method

    // Primary dGPU path: \_SB.PC00.PEG1.PEGP
    Scope (\_SB.PC00.PEG1.PEGP)
    {
        // _INI: Initialize - Called during ACPI device initialization
        // This ensures the GPU is powered off as early as possible
        Method (_INI, 0, NotSerialized)
        {
            // Call the PEG1 POFF method if it exists to properly power down
            If (CondRefOf (\_SB.PC00.PEG1.POFF))
            {
                \_SB.PC00.PEG1.POFF ()
            }
        }

        // _OFF: Power Off
        // Call the PEG1 POFF method to properly power down
        Method (_OFF, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.PEG1.POFF))
            {
                \_SB.PC00.PEG1.POFF ()
            }
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
