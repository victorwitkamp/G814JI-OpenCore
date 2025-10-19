/*
 * AppleUsbKbDxe can't handle your ASUS H_EC, so we create a fake EC device
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "EC", 0x00001000)
{
    External (_SB_.PC00.LPCB, DeviceObj)

    Scope (_SB.PC00.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")
            Method (_STA, 0, NotSerialized)
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