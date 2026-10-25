/*
 * SSDT-EC for the G814JI (docs/OPENCORE-AUDIT.md row 8): the fake embedded controller AppleBusPowerController matches on.
 * The firmware's own EC is \_SB.PC00.LPCB.H_EC (PNP0C09), whose _STA returns Zero on every OS (DSDT, evidence
 * NootedGreen-diag 2026-08-03, dsdt.dsl line 8370: it sets GFX0.CLID = 3 and returns 0), so macOS sees no EC device and
 * AppleBusPowerController never loads (0 instances in #187 / #195 / 2026-10-21): the USBX power properties
 * (SSDT-USBX, \_SB.USBX, kUSB*PowerSupply 5100 / *PortCurrentLimit 2100) are read by nobody. This is OpenCore's
 * Docs/AcpiSamples/Source/SSDT-EC.dsl (1.0.8) with the LPC bridge at PC00 instead of PCI0 and without the real-EC
 * disable (H_EC is already off). Darwin only. OpenCore inserts ACPI/Add tables after its patches (log: "Patching DSDT"
 * before "Inserted table"), so _OSI stays _OSI here (SSDT-PLUG-ALT relies on the same).
 * Build: iasl SSDT-EC.dsl  (-> SSDT-EC.aml)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "SsdtEC", 0x00001000)
{
    External (_SB_.PC00.LPCB, DeviceObj)

    Scope (\_SB.PC00.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}
