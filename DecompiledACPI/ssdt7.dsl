/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt7.dat, Sun Oct 19 21:22:56 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AE (174)
 *     Revision         0x02
 *     Checksum         0xCF
 *     OEM ID           "HgRef"
 *     OEM Table ID     "HgPeg"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "HgRef", "HgPeg", 0x00001000)
{
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (GBAS, UnknownObj)
    External (HGMD, UnknownObj)
    External (SGGP, UnknownObj)

    Scope (\_SB.PC00.PEG1.PEGP)
    {
        Method (SGPO, 4, Serialized)
        {
            If ((Arg2 == Zero))
            {
                Arg3 = ~Arg3
                Arg3 &= One
            }

            If ((SGGP == One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }
        }
    }
}

