/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (32-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of O:/EFI/OC/ACPI/SSDT-GPI0.aml, Mon Dec  9 03:21:26 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000055 (85)
 *     Revision         0x02
 *     Checksum         0x99
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "GPI0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "GPI0", 0x00000000)
{
	External (_SB_.PC00.I2C0.TPD0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0.TPDM, IntObj)
    External (GPHD, FieldUnitObj)
    External (USTP, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            GPHD = Zero
            USTP = One
			\_SB.PC00.I2C0.TPD0.TPDM = Zero
        }
    }
}

