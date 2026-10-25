/*
 * SSDT-PNLF for the G814JI (OPEN C: the backlight keys; docs/OPENCORE-AUDIT.md). The firmware has no ACPI device with
 * _CID "backlight", so AppleBacklight.kext (AppleIntelPanelA, IONameMatch "backlight") never loads, IOFramebuffer sees no
 * backlight and the internal panel attaches as a plain AppleDisplay: its IODisplayParameters carry "bklt" (which drives the
 * PCH PWM duty, BXT_BLC_PWM_DUTY 0xC8258: 0.15 -> 2666 of 17777, measured inside #188b) but not "brightness", so macOS
 * shows no brightness slider and the brightness keys have nothing to drive. Dortania's PNLF, Darwin only.
 * _UID 0x13 is the Coffee Lake+ value WhateverGreen keys its PWM fixes on; WhateverGreen is off here and Apple's TGL
 * framebuffer already writes the CNP+ (BXT-style) PWM registers itself.
 * Build: iasl SSDT-PNLF.dsl  (-> SSDT-PNLF.aml)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "PNLF", 0x00000000)
{
    Scope (\_SB)
    {
        Device (PNLF)
        {
            Name (_HID, EisaId ("APP0002"))
            Name (_CID, "backlight")
            Name (_UID, 0x13)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Return (Zero)
            }
        }
    }
}
