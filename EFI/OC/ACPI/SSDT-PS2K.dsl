/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-PS2K.aml, Thu Oct 23 20:43:58 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AB (171)
 *     Revision         0x02
 *     Checksum         0x73
 *     OEM ID           "ASUS"
 *     OEM Table ID     "PS2K"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 2, "ASUS", "PS2K", 0x00000000)
{
    External (_SB_.PC00.LPCB.PS2K, DeviceObj)
    External (_SB_.PC00.LPCB.PS2K.XSTA, MethodObj)    // 0 Arguments

    Scope (_SB.PC00.LPCB.PS2K)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (CondRefOf (\_SB.PC00.LPCB.PS2K.XSTA))
            {
                Local0 = \_SB.PC00.LPCB.PS2K.XSTA ()
            }

            Return (0x0F)
        }
    }
}

