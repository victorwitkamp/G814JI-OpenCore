/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat, Sun Oct 19 21:22:56 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000111C (4380)
 *     Revision         0x02
 *     Checksum         0x5B
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "UsbCTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "_ASUS_", "UsbCTabl", 0x00001000)
{
    External (_SB_.PC00.LPCB.CCI0, IntObj)
    External (_SB_.PC00.LPCB.CCI1, IntObj)
    External (_SB_.PC00.LPCB.CCI2, IntObj)
    External (_SB_.PC00.LPCB.CCI3, IntObj)
    External (_SB_.PC00.LPCB.CTL0, IntObj)
    External (_SB_.PC00.LPCB.CTL1, IntObj)
    External (_SB_.PC00.LPCB.CTL2, IntObj)
    External (_SB_.PC00.LPCB.CTL3, IntObj)
    External (_SB_.PC00.LPCB.CTL4, IntObj)
    External (_SB_.PC00.LPCB.CTL5, IntObj)
    External (_SB_.PC00.LPCB.CTL6, IntObj)
    External (_SB_.PC00.LPCB.CTL7, IntObj)
    External (_SB_.PC00.LPCB.MGI0, IntObj)
    External (_SB_.PC00.LPCB.MGI1, IntObj)
    External (_SB_.PC00.LPCB.MGI2, IntObj)
    External (_SB_.PC00.LPCB.MGI3, IntObj)
    External (_SB_.PC00.LPCB.MGI4, IntObj)
    External (_SB_.PC00.LPCB.MGI5, IntObj)
    External (_SB_.PC00.LPCB.MGI6, IntObj)
    External (_SB_.PC00.LPCB.MGI7, IntObj)
    External (_SB_.PC00.LPCB.MGI8, IntObj)
    External (_SB_.PC00.LPCB.MGI9, IntObj)
    External (_SB_.PC00.LPCB.MGIA, IntObj)
    External (_SB_.PC00.LPCB.MGIB, IntObj)
    External (_SB_.PC00.LPCB.MGIC, IntObj)
    External (_SB_.PC00.LPCB.MGID, IntObj)
    External (_SB_.PC00.LPCB.MGIE, IntObj)
    External (_SB_.PC00.LPCB.MGIF, IntObj)
    External (_SB_.PC00.LPCB.MGO0, IntObj)
    External (_SB_.PC00.LPCB.MGO1, IntObj)
    External (_SB_.PC00.LPCB.MGO2, IntObj)
    External (_SB_.PC00.LPCB.MGO3, IntObj)
    External (_SB_.PC00.LPCB.MGO4, IntObj)
    External (_SB_.PC00.LPCB.MGO5, IntObj)
    External (_SB_.PC00.LPCB.MGO6, IntObj)
    External (_SB_.PC00.LPCB.MGO7, IntObj)
    External (_SB_.PC00.LPCB.MGO8, IntObj)
    External (_SB_.PC00.LPCB.MGO9, IntObj)
    External (_SB_.PC00.LPCB.MGOA, IntObj)
    External (_SB_.PC00.LPCB.MGOB, IntObj)
    External (_SB_.PC00.LPCB.MGOC, IntObj)
    External (_SB_.PC00.LPCB.MGOD, IntObj)
    External (_SB_.PC00.LPCB.MGOE, IntObj)
    External (_SB_.PC00.LPCB.MGOF, IntObj)
    External (_SB_.PC00.LPCB.SEC1, MethodObj)    // 1 Arguments
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.TPLD, MethodObj)    // 2 Arguments
    External (P8XH, MethodObj)    // 2 Arguments
    External (TP1D, UnknownObj)
    External (TP1P, UnknownObj)
    External (TP1T, UnknownObj)
    External (TP1U, UnknownObj)
    External (TP2D, UnknownObj)
    External (TP2P, UnknownObj)
    External (TP2T, UnknownObj)
    External (TP2U, UnknownObj)
    External (TP3D, UnknownObj)
    External (TP3P, UnknownObj)
    External (TP3T, UnknownObj)
    External (TP3U, UnknownObj)
    External (TP4D, UnknownObj)
    External (TP4P, UnknownObj)
    External (TP4T, UnknownObj)
    External (TP4U, UnknownObj)
    External (TP5D, UnknownObj)
    External (TP5P, UnknownObj)
    External (TP5T, UnknownObj)
    External (TP5U, UnknownObj)
    External (TP6D, UnknownObj)
    External (TP6P, UnknownObj)
    External (TP6T, UnknownObj)
    External (TP6U, UnknownObj)
    External (TP7D, UnknownObj)
    External (TP7P, UnknownObj)
    External (TP7T, UnknownObj)
    External (TP7U, UnknownObj)
    External (TP8D, UnknownObj)
    External (TP8P, UnknownObj)
    External (TP8T, UnknownObj)
    External (TP8U, UnknownObj)
    External (TP9D, UnknownObj)
    External (TP9P, UnknownObj)
    External (TP9T, UnknownObj)
    External (TP9U, UnknownObj)
    External (TPAD, UnknownObj)
    External (TPAP, UnknownObj)
    External (TPAT, UnknownObj)
    External (TPAU, UnknownObj)
    External (TTUP, UnknownObj)
    External (UBCB, UnknownObj)
    External (UCMS, UnknownObj)
    External (UDRS, UnknownObj)
    External (USTC, UnknownObj)
    External (XDCE, UnknownObj)

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y00)
            })
            Device (CR01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    If ((USTC == One))
                    {
                        Return (\_SB.PC00.XHCI.RHUB.TPLD (One, One))
                    }
                }

                Name (UPC3, Package (0x04)
                {
                    0xFF, 
                    0x0A, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (UPC3) /* \_SB_.UBTC.CR01.UPC3 */
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y00._BAS, CBAS)  // _BAS: Base Address
                CBAS = UBCB /* External reference */
                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((USTC == One))
                {
                    If ((UCMS == One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (RUCC, 2, Serialized)
            {
                If (((Arg0 <= 0x0A) && (Arg0 >= One)))
                {
                    If ((Arg1 == One))
                    {
                        Return (\_SB.UBTC.TUPC (One, FTPT (Arg0)))
                    }
                    Else
                    {
                        Return (\_SB.UBTC.TPLD (One, FPMN (Arg0)))
                    }
                }
                ElseIf ((Arg1 == One))
                {
                    Return (\_SB.UBTC.TUPC (Zero, Zero))
                }
                Else
                {
                    Return (\_SB.UBTC.TPLD (Zero, Zero))
                }
            }

            Method (FTPT, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (One)
                    {
                        Local0 = (TP1D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x02)
                    {
                        Local0 = (TP2D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x03)
                    {
                        Local0 = (TP3D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x04)
                    {
                        Local0 = (TP4D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x05)
                    {
                        Local0 = (TP5D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x06)
                    {
                        Local0 = (TP6D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x07)
                    {
                        Local0 = (TP7D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x08)
                    {
                        Local0 = (TP8D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x09)
                    {
                        Local0 = (TP9D >> One)
                        Local0 &= 0x03
                    }
                    Case (0x0A)
                    {
                        Local0 = (TPAD >> One)
                        Local0 &= 0x03
                    }
                    Default
                    {
                        Local0 = 0xFF
                    }

                }

                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        Return (0x09)
                    }
                    Case (One)
                    {
                        Return (0x09)
                    }
                    Case (0x02)
                    {
                        Return (0x09)
                    }
                    Case (0x03)
                    {
                        Return (Zero)
                    }

                }

                Return (0x09)
            }

            Method (FPMN, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (One)
                    {
                        Local0 = (TP1D >> One)
                        Local0 &= 0x03
                        Local1 = (TP1D & One)
                        Local2 = TP1P /* External reference */
                        Local3 = TP1T /* External reference */
                    }
                    Case (0x02)
                    {
                        Local0 = (TP2D >> One)
                        Local0 &= 0x03
                        Local1 = (TP2D & One)
                        Local2 = TP2P /* External reference */
                        Local3 = TP2T /* External reference */
                    }
                    Case (0x03)
                    {
                        Local0 = (TP3D >> One)
                        Local0 &= 0x03
                        Local1 = (TP3D & One)
                        Local2 = TP3P /* External reference */
                        Local3 = TP3T /* External reference */
                    }
                    Case (0x04)
                    {
                        Local0 = (TP4D >> One)
                        Local0 &= 0x03
                        Local1 = (TP4D & One)
                        Local2 = TP4P /* External reference */
                        Local3 = TP4T /* External reference */
                    }
                    Case (0x05)
                    {
                        Local0 = (TP5D >> One)
                        Local0 &= 0x03
                        Local1 = (TP5D & One)
                        Local2 = TP5P /* External reference */
                        Local3 = TP5T /* External reference */
                    }
                    Case (0x06)
                    {
                        Local0 = (TP6D >> One)
                        Local0 &= 0x03
                        Local1 = (TP6D & One)
                        Local2 = TP6P /* External reference */
                        Local3 = TP6T /* External reference */
                    }
                    Case (0x07)
                    {
                        Local0 = (TP7D >> One)
                        Local0 &= 0x03
                        Local1 = (TP7D & One)
                        Local2 = TP7P /* External reference */
                        Local3 = TP7T /* External reference */
                    }
                    Case (0x08)
                    {
                        Local0 = (TP8D >> One)
                        Local0 &= 0x03
                        Local1 = (TP8D & One)
                        Local2 = TP8P /* External reference */
                        Local3 = TP8T /* External reference */
                    }
                    Case (0x09)
                    {
                        Local0 = (TP9D >> One)
                        Local0 &= 0x03
                        Local1 = (TP9D & One)
                        Local2 = TP9P /* External reference */
                        Local3 = TP9T /* External reference */
                    }
                    Case (0x0A)
                    {
                        Local0 = (TPAD >> One)
                        Local0 &= 0x03
                        Local1 = (TPAD & One)
                        Local2 = TPAP /* External reference */
                        Local3 = TPAT /* External reference */
                    }
                    Default
                    {
                        Local0 = 0xFF
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                    }

                }

                If ((Local0 == Zero))
                {
                    Return (Local2)
                }
                ElseIf (((Local0 == One) || ((Local0 == 0x02) || (Local0 == 
                    0x03))))
                {
                    If ((Local1 == One))
                    {
                        Return (Local2)
                    }
                    Else
                    {
                        Return (Local3)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TPLD, 2, Serialized)
            {
                Name (PCKG, Package (0x01)
                {
                    Buffer (0x10){}
                })
                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                REV = One
                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                VISI = Arg0
                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                GPOS = Arg1
                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                SHAP = One
                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                WID = 0x08
                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                HGT = 0x03
                Return (PCKG) /* \_SB_.UBTC.TPLD.PCKG */
            }

            Method (TUPC, 2, Serialized)
            {
                Name (PCKG, Package (0x04)
                {
                    One, 
                    Zero, 
                    Zero, 
                    Zero
                })
                PCKG [Zero] = Arg0
                PCKG [One] = Arg1
                Return (PCKG) /* \_SB_.UBTC.TUPC.PCKG */
            }

            Method (ITCP, 1, Serialized)
            {
                Switch (ToInteger (FTPT (Arg0)))
                {
                    Case (Package (0x03)
                        {
                            0x08, 
                            0x09, 
                            0x0A
                        }

)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }

            OperationRegion (USBC, SystemMemory, UBCB, 0x38)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x1F                                             // .
                            })
                        }
                        Case (One)
                        {
                            \_SB.PC00.LPCB.MGO0 = MGO0 /* \_SB_.UBTC.MGO0 */
                            \_SB.PC00.LPCB.MGO1 = MGO1 /* \_SB_.UBTC.MGO1 */
                            \_SB.PC00.LPCB.MGO2 = MGO2 /* \_SB_.UBTC.MGO2 */
                            \_SB.PC00.LPCB.MGO3 = MGO3 /* \_SB_.UBTC.MGO3 */
                            \_SB.PC00.LPCB.MGO4 = MGO4 /* \_SB_.UBTC.MGO4 */
                            \_SB.PC00.LPCB.MGO5 = MGO5 /* \_SB_.UBTC.MGO5 */
                            \_SB.PC00.LPCB.MGO6 = MGO6 /* \_SB_.UBTC.MGO6 */
                            \_SB.PC00.LPCB.MGO7 = MGO7 /* \_SB_.UBTC.MGO7 */
                            \_SB.PC00.LPCB.MGO8 = MGO8 /* \_SB_.UBTC.MGO8 */
                            \_SB.PC00.LPCB.MGO9 = MGO9 /* \_SB_.UBTC.MGO9 */
                            \_SB.PC00.LPCB.MGOA = MGOA /* \_SB_.UBTC.MGOA */
                            \_SB.PC00.LPCB.MGOB = MGOB /* \_SB_.UBTC.MGOB */
                            \_SB.PC00.LPCB.MGOC = MGOC /* \_SB_.UBTC.MGOC */
                            \_SB.PC00.LPCB.MGOD = MGOD /* \_SB_.UBTC.MGOD */
                            \_SB.PC00.LPCB.MGOE = MGOE /* \_SB_.UBTC.MGOE */
                            \_SB.PC00.LPCB.MGOF = MGOF /* \_SB_.UBTC.MGOF */
                            \_SB.PC00.LPCB.CTL0 = CTL0 /* \_SB_.UBTC.CTL0 */
                            \_SB.PC00.LPCB.CTL1 = CTL1 /* \_SB_.UBTC.CTL1 */
                            \_SB.PC00.LPCB.CTL2 = CTL2 /* \_SB_.UBTC.CTL2 */
                            \_SB.PC00.LPCB.CTL3 = CTL3 /* \_SB_.UBTC.CTL3 */
                            \_SB.PC00.LPCB.CTL4 = CTL4 /* \_SB_.UBTC.CTL4 */
                            \_SB.PC00.LPCB.CTL5 = CTL5 /* \_SB_.UBTC.CTL5 */
                            \_SB.PC00.LPCB.CTL6 = CTL6 /* \_SB_.UBTC.CTL6 */
                            \_SB.PC00.LPCB.CTL7 = CTL7 /* \_SB_.UBTC.CTL7 */
                            \_SB.PC00.LPCB.SEC1 (0x18)
                            P8XH (Zero, 0xE0)
                        }
                        Case (0x02)
                        {
                            MGI0 = \_SB.PC00.LPCB.MGI0 /* External reference */
                            MGI1 = \_SB.PC00.LPCB.MGI1 /* External reference */
                            MGI2 = \_SB.PC00.LPCB.MGI2 /* External reference */
                            MGI3 = \_SB.PC00.LPCB.MGI3 /* External reference */
                            MGI4 = \_SB.PC00.LPCB.MGI4 /* External reference */
                            MGI5 = \_SB.PC00.LPCB.MGI5 /* External reference */
                            MGI6 = \_SB.PC00.LPCB.MGI6 /* External reference */
                            MGI7 = \_SB.PC00.LPCB.MGI7 /* External reference */
                            MGI8 = \_SB.PC00.LPCB.MGI8 /* External reference */
                            MGI9 = \_SB.PC00.LPCB.MGI9 /* External reference */
                            MGIA = \_SB.PC00.LPCB.MGIA /* External reference */
                            MGIB = \_SB.PC00.LPCB.MGIB /* External reference */
                            MGIC = \_SB.PC00.LPCB.MGIC /* External reference */
                            MGID = \_SB.PC00.LPCB.MGID /* External reference */
                            MGIE = \_SB.PC00.LPCB.MGIE /* External reference */
                            MGIF = \_SB.PC00.LPCB.MGIF /* External reference */
                            CCI0 = \_SB.PC00.LPCB.CCI0 /* External reference */
                            CCI1 = \_SB.PC00.LPCB.CCI1 /* External reference */
                            CCI2 = \_SB.PC00.LPCB.CCI2 /* External reference */
                            CCI3 = \_SB.PC00.LPCB.CCI3 /* External reference */
                        }
                        Case (0x03)
                        {
                            Return (XDCE) /* External reference */
                        }
                        Case (0x04)
                        {
                            Return (UDRS) /* External reference */
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

