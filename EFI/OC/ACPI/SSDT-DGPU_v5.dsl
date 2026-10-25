/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-DGPU_v5.aml, Mon Oct 12 03:35:40 2026
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000126 (294)
 *     Revision         0x02
 *     Checksum         0x1A
 *     OEM ID           "HACK"
 *     OEM Table ID     "DGPUSPF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "DGPUSPF", 0x00000000)
{
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.PC00.PEG1.POFF, MethodObj)    // 0 Arguments

    Scope (\_SB.PC00.PEG1.PEGP)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\_SB.PC00.PEG1.POFF))
            {
                \_SB.PC00.PEG1.POFF ()
            }
        }

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            If (CondRefOf (\_SB.PC00.PEG1.POFF))
            {
                \_SB.PC00.PEG1.POFF ()
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x06)
            {
                "class-code", 
                Buffer (0x04)
                {
                     0xFF, 0xFF, 0xFF, 0xFF                           // ....
                }, 

                "IOName", 
                "#display", 
                "name", 
                Buffer (0x09)
                {
                    "#display"
                }
            })
        }
    }
}

