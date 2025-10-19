/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt9.dat, Sun Oct 19 21:22:58 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000733 (1843)
 *     Revision         0x01
 *     Checksum         0x10
 *     OEM ID           "NvDDS"
 *     OEM Table ID     "NvDDSN20"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 1, "NvDDS", "NvDDSN20", 0x00001000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPCB.HDRP, IntObj)
    External (_SB_.PC00.LPCB.IVGA, IntObj)
    External (_SB_.PC00.LPCB.MBDF, FieldUnitObj)
    External (_SB_.PC00.LPCB.NEDP, IntObj)
    External (_SB_.PC00.LPCB.SECC, MethodObj)    // 2 Arguments
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (DPMF, UnknownObj)
    External (GDPM, UnknownObj)
    External (IEB0, UnknownObj)
    External (IEB1, UnknownObj)
    External (SDMF, UnknownObj)
    External (SDPM, UnknownObj)
    External (SSMP, UnknownObj)

    Scope (\_SB.PC00.PEG1.PEGP)
    {
        Name (MMID, Package (0x02)
        {
            Package (0x03)
            {
                Zero, 
                "CBTL06DP213", 
                0x00040001
            }, 

            Package (0x03)
            {
                One, 
                "NON-MUX or Error", 
                Zero
            }
        })
        Name (EDB1, Buffer (0x80)
        {
            /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,  // ........
            /* 0008 */  0x09, 0xE5, 0x09, 0x0A, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x0A, 0x1F, 0x01, 0x04, 0xA5, 0x26, 0x15, 0x78,  // .....&.x
            /* 0018 */  0x03, 0x0F, 0x95, 0xAE, 0x52, 0x43, 0xB0, 0x26,  // ....RC.&
            /* 0020 */  0x0F, 0x50, 0x54, 0x00, 0x00, 0x00, 0x01, 0x01,  // .PT.....
            /* 0028 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,  // ........
            /* 0030 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x09, 0x64,  // .......d
            /* 0038 */  0x00, 0xB0, 0xA0, 0xA0, 0x78, 0x50, 0x30, 0x20,  // ....xP0 
            /* 0040 */  0x36, 0x00, 0x7D, 0xD6, 0x10, 0x00, 0x00, 0x18,  // 6.}.....
            /* 0048 */  0x00, 0x00, 0x00, 0xFD, 0x0C, 0x30, 0xA5, 0x02,  // .....0..
            /* 0050 */  0x02, 0x46, 0x01, 0x0A, 0x20, 0x20, 0x20, 0x20,  // .F..    
            /* 0058 */  0x20, 0x20, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x42,  //   .....B
            /* 0060 */  0x4F, 0x45, 0x20, 0x43, 0x51, 0x0A, 0x20, 0x20,  // OE CQ.  
            /* 0068 */  0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0xFE,  //     ....
            /* 0070 */  0x00, 0x4E, 0x45, 0x31, 0x37, 0x33, 0x51, 0x48,  // .NE173QH
            /* 0078 */  0x4D, 0x2D, 0x4E, 0x59, 0x33, 0x0A, 0x01, 0x6D   // M-NY3..m
        })
        Name (EDB2, Buffer (0x0100)
        {
            /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,  // ........
            /* 0008 */  0x09, 0xE5, 0x09, 0x0A, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x0A, 0x1F, 0x01, 0x04, 0xA5, 0x26, 0x15, 0x78,  // .....&.x
            /* 0018 */  0x03, 0x0F, 0x95, 0xAE, 0x52, 0x43, 0xB0, 0x26,  // ....RC.&
            /* 0020 */  0x0F, 0x50, 0x54, 0x00, 0x00, 0x00, 0x01, 0x01,  // .PT.....
            /* 0028 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,  // ........
            /* 0030 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x09, 0x64,  // .......d
            /* 0038 */  0x00, 0xB0, 0xA0, 0xA0, 0x78, 0x50, 0x30, 0x20,  // ....xP0 
            /* 0040 */  0x36, 0x00, 0x7D, 0xD6, 0x10, 0x00, 0x00, 0x18,  // 6.}.....
            /* 0048 */  0x00, 0x00, 0x00, 0xFD, 0x0C, 0x30, 0xA5, 0x02,  // .....0..
            /* 0050 */  0x02, 0x46, 0x01, 0x0A, 0x20, 0x20, 0x20, 0x20,  // .F..    
            /* 0058 */  0x20, 0x20, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x42,  //   .....B
            /* 0060 */  0x4F, 0x45, 0x20, 0x43, 0x51, 0x0A, 0x20, 0x20,  // OE CQ.  
            /* 0068 */  0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0xFE,  //     ....
            /* 0070 */  0x00, 0x4E, 0x45, 0x31, 0x37, 0x33, 0x51, 0x48,  // .NE173QH
            /* 0078 */  0x4D, 0x2D, 0x4E, 0x59, 0x33, 0x0A, 0x01, 0x6D,  // M-NY3..m
            /* 0080 */  0x70, 0x13, 0x79, 0x00, 0x00, 0x03, 0x01, 0x14,  // p.y.....
            /* 0088 */  0x19, 0x13, 0x01, 0x84, 0xFF, 0x09, 0xAF, 0x00,  // ........
            /* 0090 */  0x2F, 0x00, 0x1F, 0x00, 0x9F, 0x05, 0x77, 0x00,  // /.....w.
            /* 0098 */  0x02, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0x90   // ........
        })
        OperationRegion (GIE0, SystemMemory, 0xE06A0870, 0x20)
        Field (GIE0, ByteAcc, Lock, Preserve)
        {
            WE15,   1, 
            RE15,   1, 
            Offset (0x10), 
            WE16,   1, 
            RE16,   1
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            Return (Package (0x01)
            {
                0x8000A450
            })
        }

        Device (LCD0)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (0x8000A450)
            }

            Method (_DDC, 1, Serialized)  // _DDC: Display Data Current
            {
                Debug = "Mild DDS debug"
                Name (BUF2, Buffer (0x0180){})
                CreateField (BUF2, Zero, 0x0400, EDB0)
                CreateField (BUF2, Zero, 0x0800, EDB1)
                CreateField (BUF2, Zero, 0x0C00, EDB2)
                EDB2 = IEB0 /* External reference */
                If ((Arg0 == One))
                {
                    Return (EDB0) /* \_SB_.PC00.PEG1.PEGP.LCD0._DDC.EDB0 */
                }

                If ((Arg0 == 0x02))
                {
                    Return (EDB1) /* \_SB_.PC00.PEG1.PEGP.LCD0._DDC.EDB1 */
                }

                If ((Arg0 == 0x03))
                {
                    Return (EDB2) /* \_SB_.PC00.PEG1.PEGP.LCD0._DDC.EDB2 */
                }
            }

            Method (MXDS, 1, NotSerialized)
            {
                Local0 = Arg0
                Local1 = (Local0 & 0x0F)
                Local2 = (Local0 & 0x10)
                If ((Local1 == Zero))
                {
                    If ((RE15 == Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (0x02)
                    }
                }
                ElseIf ((Local1 == One))
                {
                    If ((Local2 == 0x10))
                    {
                        WE15 = One
                        \_SB.PC00.LPCB.NEDP = One
                    }
                    Else
                    {
                        WE15 = Zero
                        \_SB.PC00.LPCB.NEDP = Zero
                    }

                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (MXDM, 1, NotSerialized)
            {
                Local0 = Arg0
                Local1 = (Local0 & 0x07)
                If ((Local1 == Zero))
                {
                    Local2 = DPMF /* External reference */
                    Return (Local2)
                }
                ElseIf ((Local1 < 0x05))
                {
                    SDMF = Local1
                    SSMP = 0xB8
                }
                Else
                {
                    Return (Zero)
                }

                Return (One)
            }

            Method (MXID, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Local0 = DerefOf (DerefOf (MMID [Zero]) [0x02])
                    Return (Local0)
                }
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (Package (0x67)
                {
                    0x50, 
                    0x32, 
                    Zero, 
                    One, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5B, 
                    0x5C, 
                    0x5D, 
                    0x5E, 
                    0x5F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64
                })
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
            }

            Method (LRST, 1, NotSerialized)
            {
                Local0 = Arg0
                Local1 = (Local0 & 0x07)
                If ((Local1 == Zero))
                {
                    If ((RE16 == Zero))
                    {
                        Return (One)
                    }
                    ElseIf ((RE16 == One))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                ElseIf ((Local1 == One))
                {
                    WE16 = Zero
                }
                ElseIf ((Local1 == 0x02))
                {
                    WE16 = One
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PC00)
    {
        Device (AWMI)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "0x00")  // _UID: Unique ID
            Name (LEDC, 0x23)
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0x13, 0x96, 0x3E, 0x60, 0x25, 0xEF, 0x38, 0x43,  // ..>`%.8C
                /* 0008 */  0xA3, 0xD0, 0xC4, 0x61, 0x77, 0x51, 0x6D, 0xB7,  // ...awQm.
                /* 0010 */  0x41, 0x41, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // AA..!...
                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x30, 0x30, 0x01, 0x00   // ..).00..
            })
            Method (WMAA, 3, Serialized)
            {
                CreateByteField (Arg2, Zero, MODF)
                CreateDWordField (Arg2, 0x04, LEDB)
                Switch (Arg1)
                {
                    Case (One)
                    {
                        If ((MODF == Zero))
                        {
                            LEDB = LEDC /* \_SB_.PC00.AWMI.LEDC */
                            Return (LEDB) /* \_SB_.PC00.AWMI.WMAA.LEDB */
                        }
                        ElseIf ((MODF == One))
                        {
                            LEDC = (LEDB & 0xFF)
                            \_SB.PC00.LPCB.MBDF = LEDC /* \_SB_.PC00.AWMI.LEDC */
                            Return (Zero)
                        }
                        ElseIf ((MODF == 0x02))
                        {
                            LEDB = 0x64
                            Return (LEDB) /* \_SB_.PC00.AWMI.WMAA.LEDB */
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                    Case (0x02)
                    {
                        If ((MODF == Zero))
                        {
                            If ((\_SB.PC00.LPCB.HDRP == 0x33))
                            {
                                LEDB = 0x03
                            }
                            ElseIf ((\_SB.PC00.LPCB.IVGA == One))
                            {
                                LEDB = One
                            }
                            Else
                            {
                                LEDB = 0x02
                            }

                            Return (LEDB) /* \_SB_.PC00.AWMI.WMAA.LEDB */
                        }
                        ElseIf ((MODF == One))
                        {
                            If ((LEDB < 0x03))
                            {
                                Local0 = Zero
                                If ((LEDB == One))
                                {
                                    Local0 = One
                                }

                                \_SB.PC00.LPCB.SECC (0x40, Local0)
                                Return (Zero)
                            }

                            Return (One)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                    Default
                    {
                        Return (One)
                    }

                }
            }
        }
    }
}

