/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-DGPU_v4.aml, Thu Oct 23 20:43:58 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000D6 (214)
 *     Revision         0x02
 *     Checksum         0xEB
 *     OEM ID           "HACK"
 *     OEM Table ID     "DGPUOFF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "DGPUOFF", 0x00000000)
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
            Return (Zero)
        }
    }
}

