DefinitionBlock ("", "SSDT", 2, "ASUS", "PS2K", 0)
{
    External (\_SB.PC00.LPCB.PS2K, DeviceObj)
    External (\_SB.PC00.LPCB.PS2K.XSTA, MethodObj)

    Scope (\_SB.PC00.LPCB.PS2K)
    {
        Method (_STA, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.LPCB.PS2K.XSTA))
            {
                Return (\_SB.PC00.LPCB.PS2K.XSTA())
            }
            Return (0x0F)
        }
    }
}