/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-DGPU_v4.aml, Thu Oct 23 18:23:46 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000BC (188)
 *     Revision         0x02
 *     Checksum         0xBB
 *     OEM ID           "HACK"
 *     OEM Table ID     "DGPUOFF4"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20250807 (539297799)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "DGPUOFF4", 0x00000000)
{
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEGP, DeviceObj)

    Scope (\_SB.PC00.PEG1.PEGP)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.PEGP)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (Zero)
        }
    }
}

