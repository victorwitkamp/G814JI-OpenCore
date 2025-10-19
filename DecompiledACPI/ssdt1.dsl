/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat, Sun Oct 19 21:22:56 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002D09 (11529)
 *     Revision         0x02
 *     Checksum         0xAE
 *     OEM ID           "DptfTb"
 *     OEM Table ID     "DptfTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "DptfTb", "DptfTabl", 0x00001000)
{
    External (_SB_.AAC0, FieldUnitObj)
    External (_SB_.ACRT, FieldUnitObj)
    External (_SB_.APSV, FieldUnitObj)
    External (_SB_.CBMI, FieldUnitObj)
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.CLVL, FieldUnitObj)
    External (_SB_.CPPC, FieldUnitObj)
    External (_SB_.CTC0, FieldUnitObj)
    External (_SB_.CTC1, FieldUnitObj)
    External (_SB_.CTC2, FieldUnitObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PAGD, DeviceObj)
    External (_SB_.PAGD._PUR, PkgObj)
    External (_SB_.PAGD._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPCB, DeviceObj)
    External (_SB_.PC00.LPCB.BATM, FieldUnitObj)
    External (_SB_.PC00.LPCB.CLOT, FieldUnitObj)
    External (_SB_.PC00.LPCB.CTMP, FieldUnitObj)
    External (_SB_.PC00.LPCB.ECOK, IntObj)
    External (_SB_.PC00.LPCB.M662, FieldUnitObj)
    External (_SB_.PC00.LPCB.MUT0, MutexObj)
    External (_SB_.PC00.LPCB.Q4HI, FieldUnitObj)
    External (_SB_.PC00.LPCB.Q4HU, FieldUnitObj)
    External (_SB_.PC00.LPCB.Q4LO, FieldUnitObj)
    External (_SB_.PC00.LPCB.Q4LU, FieldUnitObj)
    External (_SB_.PC00.LPCB.SEN2, DeviceObj)
    External (_SB_.PC00.LPCB.SEN3, DeviceObj)
    External (_SB_.PC00.LPCB.VRTT, UnknownObj)
    External (_SB_.PC00.MC__.MHBR, FieldUnitObj)
    External (_SB_.PC00.TCPU, DeviceObj)
    External (_SB_.PL10, FieldUnitObj)
    External (_SB_.PL11, FieldUnitObj)
    External (_SB_.PL12, FieldUnitObj)
    External (_SB_.PL20, FieldUnitObj)
    External (_SB_.PL21, FieldUnitObj)
    External (_SB_.PL22, FieldUnitObj)
    External (_SB_.PLW0, FieldUnitObj)
    External (_SB_.PLW1, FieldUnitObj)
    External (_SB_.PLW2, FieldUnitObj)
    External (_SB_.PR00, ProcessorObj)
    External (_SB_.PR00._PSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TPC, IntObj)
    External (_SB_.PR00._TSD, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
    External (_SB_.PR00.TSMC, PkgObj)
    External (_SB_.PR00.TSMF, PkgObj)
    External (_SB_.PR01, ProcessorObj)
    External (_SB_.PR02, ProcessorObj)
    External (_SB_.PR03, ProcessorObj)
    External (_SB_.PR04, ProcessorObj)
    External (_SB_.PR05, ProcessorObj)
    External (_SB_.PR06, ProcessorObj)
    External (_SB_.PR07, ProcessorObj)
    External (_SB_.PR08, ProcessorObj)
    External (_SB_.PR09, ProcessorObj)
    External (_SB_.PR10, ProcessorObj)
    External (_SB_.PR11, ProcessorObj)
    External (_SB_.PR12, ProcessorObj)
    External (_SB_.PR13, ProcessorObj)
    External (_SB_.PR14, ProcessorObj)
    External (_SB_.PR15, ProcessorObj)
    External (_SB_.PR16, ProcessorObj)
    External (_SB_.PR17, ProcessorObj)
    External (_SB_.PR18, ProcessorObj)
    External (_SB_.PR19, ProcessorObj)
    External (_SB_.PR20, ProcessorObj)
    External (_SB_.PR21, ProcessorObj)
    External (_SB_.PR22, ProcessorObj)
    External (_SB_.PR23, ProcessorObj)
    External (_SB_.PR24, ProcessorObj)
    External (_SB_.PR25, ProcessorObj)
    External (_SB_.PR26, ProcessorObj)
    External (_SB_.PR27, ProcessorObj)
    External (_SB_.PR28, ProcessorObj)
    External (_SB_.PR29, ProcessorObj)
    External (_SB_.PR30, ProcessorObj)
    External (_SB_.PR31, ProcessorObj)
    External (_SB_.SLPB, DeviceObj)
    External (_SB_.TAR0, FieldUnitObj)
    External (_SB_.TAR1, FieldUnitObj)
    External (_SB_.TAR2, FieldUnitObj)
    External (_TZ_.ETMD, IntObj)
    External (_TZ_.THRM, ThermalZoneObj)
    External (ACTT, IntObj)
    External (ATPC, IntObj)
    External (BATR, IntObj)
    External (CHGE, IntObj)
    External (CRTT, IntObj)
    External (DCFE, IntObj)
    External (DPTF, IntObj)
    External (ECON, IntObj)
    External (FND1, IntObj)
    External (FND2, IntObj)
    External (FND3, IntObj)
    External (HIDW, MethodObj)    // 4 Arguments
    External (HIWC, MethodObj)    // 1 Arguments
    External (IN34, IntObj)
    External (ODV0, IntObj)
    External (ODV1, IntObj)
    External (ODV2, IntObj)
    External (ODV3, IntObj)
    External (ODV4, IntObj)
    External (ODV5, IntObj)
    External (PCHE, FieldUnitObj)
    External (PF00, IntObj)
    External (PLID, IntObj)
    External (PNHM, IntObj)
    External (PPPR, IntObj)
    External (PPSZ, IntObj)
    External (PSVT, IntObj)
    External (PTPC, IntObj)
    External (PWRE, IntObj)
    External (PWRS, IntObj)
    External (S1DE, IntObj)
    External (S2DE, IntObj)
    External (S3DE, IntObj)
    External (S4DE, IntObj)
    External (S5DE, IntObj)
    External (S6DE, IntObj)
    External (S6P2, IntObj)
    External (SADE, IntObj)
    External (SSP1, IntObj)
    External (SSP2, IntObj)
    External (SSP3, IntObj)
    External (SSP4, IntObj)
    External (SSP5, IntObj)
    External (TCNT, IntObj)
    External (TSOD, IntObj)

    Scope (\_SB)
    {
        Device (IETM)
        {
            Method (GHID, 1, Serialized)
            {
                If ((Arg0 == "IETM"))
                {
                    Return ("INTC1041")
                }

                If ((Arg0 == "SEN1"))
                {
                    Return ("INTC1046")
                }

                If ((Arg0 == "SEN2"))
                {
                    Return ("INTC1046")
                }

                If ((Arg0 == "SEN3"))
                {
                    Return ("INTC1046")
                }

                If ((Arg0 == "SEN4"))
                {
                    Return ("INTC1046")
                }

                If ((Arg0 == "SEN5"))
                {
                    Return ("INTC1046")
                }

                If ((Arg0 == "TPCH"))
                {
                    Return ("INTC1049")
                }

                If ((Arg0 == "TFN1"))
                {
                    Return ("INTC1048")
                }

                If ((Arg0 == "TFN2"))
                {
                    Return ("INTC1048")
                }

                If ((Arg0 == "TFN3"))
                {
                    Return ("INTC1048")
                }

                If ((Arg0 == "TPWR"))
                {
                    Return ("INTC1060")
                }

                If ((Arg0 == "1"))
                {
                    Return ("INTC1061")
                }

                If ((Arg0 == "CHRG"))
                {
                    Return ("INTC1046")
                }

                Return ("XXXX9999")
            }

            Name (_UID, "IETM")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (CondRefOf (HIWC))
                {
                    If (HIWC (Arg0))
                    {
                        If (CondRefOf (HIDW))
                        {
                            Return (HIDW (Arg0, Arg1, Arg2, Arg3))
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((\DPTF == One) && (\IN34 == One)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PTRP, Zero)
            Name (PSEM, Zero)
            Name (ATRP, Zero)
            Name (ASEM, Zero)
            Name (YTRP, Zero)
            Name (YSEM, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                If ((Arg1 != One))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x0A
                    Return (Arg3)
                }

                If ((Arg2 != 0x02))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x02
                    Return (Arg3)
                }

                If (CondRefOf (\_SB.APSV))
                {
                    If ((PSEM == Zero))
                    {
                        PSEM = One
                        PTRP = \_SB.APSV /* External reference */
                    }
                }

                If (CondRefOf (\_SB.AAC0))
                {
                    If ((ASEM == Zero))
                    {
                        ASEM = One
                        ATRP = \_SB.AAC0 /* External reference */
                    }
                }

                If (CondRefOf (\_SB.ACRT))
                {
                    If ((YSEM == Zero))
                    {
                        YSEM = One
                        YTRP = \_SB.ACRT /* External reference */
                    }
                }

                If ((Arg0 == ToUUID ("b23ba85d-c8b7-3542-88de-8de2ffcfd698") /* Unknown UUID */))
                {
                    If (~(STS1 & One))
                    {
                        If ((CAP1 & One))
                        {
                            If ((CAP1 & 0x02))
                            {
                                \_SB.AAC0 = 0x6E
                                \_TZ.ETMD = Zero
                            }
                            Else
                            {
                                \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                                \_TZ.ETMD = One
                            }

                            If ((CAP1 & 0x04))
                            {
                                \_SB.APSV = 0x6E
                            }
                            Else
                            {
                                \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                            }

                            If ((CAP1 & 0x08))
                            {
                                \_SB.ACRT = 0xD2
                            }
                            Else
                            {
                                \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                            }
                        }
                        Else
                        {
                            \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                            \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                            \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                            \_TZ.ETMD = One
                        }

                        Notify (\_TZ.THRM, 0x81) // Information Change
                    }

                    Return (Arg3)
                }

                Return (Arg3)
            }

            Method (DCFG, 0, NotSerialized)
            {
                Return (\DCFE) /* External reference */
            }

            Name (ODVX, Package (0x06)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (ODVP, 0, Serialized)
            {
                ODVX [Zero] = \ODV0 /* External reference */
                ODVX [One] = \ODV1 /* External reference */
                ODVX [0x02] = \ODV2 /* External reference */
                ODVX [0x03] = \ODV3 /* External reference */
                ODVX [0x04] = \ODV4 /* External reference */
                ODVX [0x05] = \ODV5 /* External reference */
                Return (ODVX) /* \_SB_.IETM.ODVX */
            }

            Scope (\_SB.PC00.TCPU)
            {
                Name (PFLG, Zero)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((\SADE == One))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                OperationRegion (CPWR, SystemMemory, ((\_SB.PC00.MC.MHBR << 0x0F) + 0x5000), 0x1000)
                Field (CPWR, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x930), 
                    PTDP,   15, 
                    Offset (0x932), 
                    PMIN,   15, 
                    Offset (0x934), 
                    PMAX,   15, 
                    Offset (0x936), 
                    TMAX,   7, 
                    Offset (0x938), 
                    PWRU,   4, 
                    Offset (0x939), 
                    EGYU,   5, 
                    Offset (0x93A), 
                    TIMU,   4, 
                    Offset (0x958), 
                    Offset (0x95C), 
                    LPMS,   1, 
                    CTNL,   2, 
                    Offset (0x978), 
                    PCTP,   8, 
                    Offset (0x998), 
                    RP0C,   8, 
                    RP1C,   8, 
                    RPNC,   8, 
                    Offset (0xF3C), 
                    TRAT,   8, 
                    Offset (0xF40), 
                    PTD1,   15, 
                    Offset (0xF42), 
                    TRA1,   8, 
                    Offset (0xF44), 
                    PMX1,   15, 
                    Offset (0xF46), 
                    PMN1,   15, 
                    Offset (0xF48), 
                    PTD2,   15, 
                    Offset (0xF4A), 
                    TRA2,   8, 
                    Offset (0xF4C), 
                    PMX2,   15, 
                    Offset (0xF4E), 
                    PMN2,   15, 
                    Offset (0xF50), 
                    CTCL,   2, 
                        ,   29, 
                    CLCK,   1, 
                    MNTR,   8
                }

                Name (XPCC, Zero)
                Method (PPCC, 0, Serialized)
                {
                    If (((XPCC == Zero) && CondRefOf (\_SB.CBMI)))
                    {
                        Switch (ToInteger (\_SB.CBMI))
                        {
                            Case (Zero)
                            {
                                If (((\_SB.CLVL >= One) && (\_SB.CLVL <= 0x03)))
                                {
                                    CPL0 ()
                                    XPCC = One
                                }
                            }
                            Case (One)
                            {
                                If (((\_SB.CLVL == 0x02) || (\_SB.CLVL == 0x03)))
                                {
                                    CPL1 ()
                                    XPCC = One
                                }
                            }
                            Case (0x02)
                            {
                                If ((\_SB.CLVL == 0x03))
                                {
                                    CPL2 ()
                                    XPCC = One
                                }
                            }

                        }
                    }

                    Return (NPCC) /* \_SB_.PC00.TCPU.NPCC */
                }

                Name (NPCC, Package (0x03)
                {
                    0x02, 
                    Package (0x06)
                    {
                        Zero, 
                        0x88B8, 
                        0xAFC8, 
                        0x6D60, 
                        0x7D00, 
                        0x03E8
                    }, 

                    Package (0x06)
                    {
                        One, 
                        0xDBBA, 
                        0xDBBA, 
                        Zero, 
                        Zero, 
                        0x03E8
                    }
                })
                Method (CPNU, 2, Serialized)
                {
                    Name (CNVT, Zero)
                    Name (PPUU, Zero)
                    Name (RMDR, Zero)
                    If ((PWRU == Zero))
                    {
                        PPUU = One
                    }
                    Else
                    {
                        PPUU = (PWRU-- << 0x02)
                    }

                    Divide (Arg0, PPUU, RMDR, CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
                    If ((Arg1 == Zero))
                    {
                        Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
                    }
                    Else
                    {
                        CNVT *= 0x03E8
                        RMDR *= 0x03E8
                        RMDR /= PPUU
                        CNVT += RMDR /* \_SB_.PC00.TCPU.CPNU.RMDR */
                        Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
                    }
                }

                Method (CPL0, 0, NotSerialized)
                {
                    \_SB.PC00.TCPU.NPCC [Zero] = 0x02
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL10, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW0 * 0x03E8)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW0 * 0x03E8
                        ) + 0x0FA0)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL20, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL20, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
                }

                Method (CPL1, 0, NotSerialized)
                {
                    \_SB.PC00.TCPU.NPCC [Zero] = 0x02
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL11, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW1 * 0x03E8)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW1 * 0x03E8
                        ) + 0x0FA0)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL21, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL21, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
                }

                Method (CPL2, 0, NotSerialized)
                {
                    \_SB.PC00.TCPU.NPCC [Zero] = 0x02
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL12, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW2 * 0x03E8)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW2 * 0x03E8
                        ) + 0x0FA0)
                    DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL22, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL22, One)
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
                    DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
                }

                Name (LSTM, Zero)
                Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
                Method (SPPC, 1, Serialized)
                {
                    If (CondRefOf (\_SB.CPPC))
                    {
                        \_SB.CPPC = Arg0
                    }

                    If ((ToInteger (\TCNT) > Zero))
                    {
                        Notify (\_SB.PR00, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > One))
                    {
                        Notify (\_SB.PR01, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x02))
                    {
                        Notify (\_SB.PR02, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x03))
                    {
                        Notify (\_SB.PR03, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x04))
                    {
                        Notify (\_SB.PR04, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x05))
                    {
                        Notify (\_SB.PR05, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x06))
                    {
                        Notify (\_SB.PR06, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x07))
                    {
                        Notify (\_SB.PR07, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x08))
                    {
                        Notify (\_SB.PR08, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x09))
                    {
                        Notify (\_SB.PR09, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x0A))
                    {
                        Notify (\_SB.PR10, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x0B))
                    {
                        Notify (\_SB.PR11, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x0C))
                    {
                        Notify (\_SB.PR12, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x0D))
                    {
                        Notify (\_SB.PR13, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x0E))
                    {
                        Notify (\_SB.PR14, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x0F))
                    {
                        Notify (\_SB.PR15, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x10))
                    {
                        Notify (\_SB.PR16, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x11))
                    {
                        Notify (\_SB.PR17, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x12))
                    {
                        Notify (\_SB.PR18, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x13))
                    {
                        Notify (\_SB.PR19, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x14))
                    {
                        Notify (\_SB.PR20, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x15))
                    {
                        Notify (\_SB.PR21, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x16))
                    {
                        Notify (\_SB.PR22, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x17))
                    {
                        Notify (\_SB.PR23, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x18))
                    {
                        Notify (\_SB.PR24, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x19))
                    {
                        Notify (\_SB.PR25, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x1A))
                    {
                        Notify (\_SB.PR26, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x1B))
                    {
                        Notify (\_SB.PR27, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x1C))
                    {
                        Notify (\_SB.PR28, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x1D))
                    {
                        Notify (\_SB.PR29, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x1E))
                    {
                        Notify (\_SB.PR30, 0x80) // Status Change
                    }

                    If ((ToInteger (\TCNT) > 0x1F))
                    {
                        Notify (\_SB.PR31, 0x80) // Status Change
                    }
                }

                Method (SPUR, 1, NotSerialized)
                {
                    If ((Arg0 <= \TCNT))
                    {
                        If ((\_SB.PAGD._STA () == 0x0F))
                        {
                            \_SB.PAGD._PUR [One] = Arg0
                            Notify (\_SB.PAGD, 0x80) // Status Change
                        }
                    }
                }

                Method (PCCC, 0, Serialized)
                {
                    PCCX [Zero] = One
                    Switch (ToInteger (CPNU (PTDP, Zero)))
                    {
                        Case (0x39)
                        {
                            DerefOf (PCCX [One]) [Zero] = 0xA7F8
                            DerefOf (PCCX [One]) [One] = 0x00017318
                        }
                        Case (0x2F)
                        {
                            DerefOf (PCCX [One]) [Zero] = 0x9858
                            DerefOf (PCCX [One]) [One] = 0x00014C08
                        }
                        Case (0x25)
                        {
                            DerefOf (PCCX [One]) [Zero] = 0x7148
                            DerefOf (PCCX [One]) [One] = 0xD6D8
                        }
                        Case (0x19)
                        {
                            DerefOf (PCCX [One]) [Zero] = 0x3E80
                            DerefOf (PCCX [One]) [One] = 0x7D00
                        }
                        Case (0x0F)
                        {
                            DerefOf (PCCX [One]) [Zero] = 0x36B0
                            DerefOf (PCCX [One]) [One] = 0x7D00
                        }
                        Case (0x0B)
                        {
                            DerefOf (PCCX [One]) [Zero] = 0x36B0
                            DerefOf (PCCX [One]) [One] = 0x61A8
                        }
                        Default
                        {
                            DerefOf (PCCX [One]) [Zero] = 0xFF
                            DerefOf (PCCX [One]) [One] = 0xFF
                        }

                    }

                    Return (PCCX) /* \_SB_.PC00.TCPU.PCCX */
                }

                Name (PCCX, Package (0x02)
                {
                    0x80000000, 
                    Package (0x02)
                    {
                        0x80000000, 
                        0x80000000
                    }
                })
                Name (KEFF, Package (0x1E)
                {
                    Package (0x02)
                    {
                        0x01BC, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x01CF, 
                        0x27
                    }, 

                    Package (0x02)
                    {
                        0x01E1, 
                        0x4B
                    }, 

                    Package (0x02)
                    {
                        0x01F3, 
                        0x6C
                    }, 

                    Package (0x02)
                    {
                        0x0206, 
                        0x8B
                    }, 

                    Package (0x02)
                    {
                        0x0218, 
                        0xA8
                    }, 

                    Package (0x02)
                    {
                        0x022A, 
                        0xC3
                    }, 

                    Package (0x02)
                    {
                        0x023D, 
                        0xDD
                    }, 

                    Package (0x02)
                    {
                        0x024F, 
                        0xF4
                    }, 

                    Package (0x02)
                    {
                        0x0261, 
                        0x010B
                    }, 

                    Package (0x02)
                    {
                        0x0274, 
                        0x011F
                    }, 

                    Package (0x02)
                    {
                        0x032C, 
                        0x01BD
                    }, 

                    Package (0x02)
                    {
                        0x03D7, 
                        0x0227
                    }, 

                    Package (0x02)
                    {
                        0x048B, 
                        0x026D
                    }, 

                    Package (0x02)
                    {
                        0x053E, 
                        0x02A1
                    }, 

                    Package (0x02)
                    {
                        0x05F7, 
                        0x02C6
                    }, 

                    Package (0x02)
                    {
                        0x06A8, 
                        0x02E6
                    }, 

                    Package (0x02)
                    {
                        0x075D, 
                        0x02FF
                    }, 

                    Package (0x02)
                    {
                        0x0818, 
                        0x0311
                    }, 

                    Package (0x02)
                    {
                        0x08CF, 
                        0x0322
                    }, 

                    Package (0x02)
                    {
                        0x179C, 
                        0x0381
                    }, 

                    Package (0x02)
                    {
                        0x2DDC, 
                        0x039C
                    }, 

                    Package (0x02)
                    {
                        0x44A8, 
                        0x039E
                    }, 

                    Package (0x02)
                    {
                        0x5C35, 
                        0x0397
                    }, 

                    Package (0x02)
                    {
                        0x747D, 
                        0x038D
                    }, 

                    Package (0x02)
                    {
                        0x8D7F, 
                        0x0382
                    }, 

                    Package (0x02)
                    {
                        0xA768, 
                        0x0376
                    }, 

                    Package (0x02)
                    {
                        0xC23B, 
                        0x0369
                    }, 

                    Package (0x02)
                    {
                        0xDE26, 
                        0x035A
                    }, 

                    Package (0x02)
                    {
                        0xFB7C, 
                        0x034A
                    }
                })
                Name (CEUP, Package (0x06)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
                {
                    LSTM = Arg0
                    Notify (\_SB.PC00.TCPU, 0x91) // Device-Specific
                }

                Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
                {
                    Return (0x0ADE)
                }

                Name (PTYP, Zero)
                Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
                {
                    If (CondRefOf (\_SB.PR00._PSS))
                    {
                        Return (\_SB.PR00._PSS ())
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            Package (0x06)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }, 

                            Package (0x06)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        })
                    }
                }

                Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
                {
                    If (CondRefOf (\_SB.PR00._TSS))
                    {
                        Return (\_SB.PR00._TSS ())
                    }
                    Else
                    {
                        Return (Package (0x01)
                        {
                            Package (0x05)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        })
                    }
                }

                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    If (CondRefOf (\_SB.PR00._TPC))
                    {
                        Return (\_SB.PR00._TPC) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
                {
                    If ((CondRefOf (\PF00) && (\PF00 != 0x80000000)))
                    {
                        If ((\PF00 & 0x04))
                        {
                            Return (Package (0x02)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x00,               // Bit Width
                                        0x00,               // Bit Offset
                                        0x0000000000000000, // Address
                                        ,)
                                }, 

                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x00,               // Bit Width
                                        0x00,               // Bit Offset
                                        0x0000000000000000, // Address
                                        ,)
                                }
                            })
                        }
                        Else
                        {
                            Return (Package (0x02)
                            {
                                ResourceTemplate ()
                                {
                                    Register (SystemIO, 
                                        0x05,               // Bit Width
                                        0x00,               // Bit Offset
                                        0x0000000000001810, // Address
                                        ,)
                                }, 

                                ResourceTemplate ()
                                {
                                    Register (SystemIO, 
                                        0x05,               // Bit Width
                                        0x00,               // Bit Offset
                                        0x0000000000001810, // Address
                                        ,)
                                }
                            })
                        }
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }
                        })
                    }
                }

                Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
                {
                    If (CondRefOf (\_SB.PR00._TSD))
                    {
                        Return (\_SB.PR00._TSD ())
                    }
                    Else
                    {
                        Return (Package (0x01)
                        {
                            Package (0x05)
                            {
                                0x05, 
                                Zero, 
                                Zero, 
                                0xFC, 
                                Zero
                            }
                        })
                    }
                }

                Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
                {
                    If ((CondRefOf (\_SB.PR00._TSS) && CondRefOf (\_SB.CFGD)))
                    {
                        If ((\_SB.CFGD & 0x2000))
                        {
                            Return ((SizeOf (\_SB.PR00.TSMF) - One))
                        }
                        Else
                        {
                            Return ((SizeOf (\_SB.PR00.TSMC) - One))
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
                {
                    If (CondRefOf (\_SB.PR00._PSS))
                    {
                        If ((\_SB.OSCP & 0x0400))
                        {
                            Return ((SizeOf (\_SB.PR00.TPSS) - One))
                        }
                        Else
                        {
                            Return ((SizeOf (\_SB.PR00.LPSS) - One))
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (\_SB.IETM)
            {
                Name (CTSP, Package (0x01)
                {
                    ToUUID ("e145970a-e4c1-4d73-900e-c9c5a69dd067") /* Unknown UUID */
                })
            }

            Scope (\_SB.PC00.TCPU)
            {
                Method (TDPL, 0, Serialized)
                {
                    Name (AAAA, Zero)
                    Name (BBBB, Zero)
                    Name (CCCC, Zero)
                    Local0 = CTNL /* \_SB_.PC00.TCPU.CTNL */
                    If (((Local0 == One) || (Local0 == 0x02)))
                    {
                        Local0 = \_SB.CLVL /* External reference */
                    }
                    Else
                    {
                        Return (Package (0x01)
                        {
                            Zero
                        })
                    }

                    If ((CLCK == One))
                    {
                        Local0 = One
                    }

                    AAAA = CPNU (\_SB.PL10, One)
                    BBBB = CPNU (\_SB.PL11, One)
                    CCCC = CPNU (\_SB.PL12, One)
                    Name (TMP1, Package (0x01)
                    {
                        Package (0x05)
                        {
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000
                        }
                    })
                    Name (TMP2, Package (0x02)
                    {
                        Package (0x05)
                        {
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000
                        }, 

                        Package (0x05)
                        {
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000
                        }
                    })
                    Name (TMP3, Package (0x03)
                    {
                        Package (0x05)
                        {
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000
                        }, 

                        Package (0x05)
                        {
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000
                        }, 

                        Package (0x05)
                        {
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000, 
                            0x80000000
                        }
                    })
                    If ((Local0 == 0x03))
                    {
                        If ((AAAA > BBBB))
                        {
                            If ((AAAA > CCCC))
                            {
                                If ((BBBB > CCCC))
                                {
                                    Local3 = Zero
                                    LEV0 = Zero
                                    Local4 = One
                                    LEV1 = One
                                    Local5 = 0x02
                                    LEV2 = 0x02
                                }
                                Else
                                {
                                    Local3 = Zero
                                    LEV0 = Zero
                                    Local5 = One
                                    LEV1 = 0x02
                                    Local4 = 0x02
                                    LEV2 = One
                                }
                            }
                            Else
                            {
                                Local5 = Zero
                                LEV0 = 0x02
                                Local3 = One
                                LEV1 = Zero
                                Local4 = 0x02
                                LEV2 = One
                            }
                        }
                        ElseIf ((BBBB > CCCC))
                        {
                            If ((AAAA > CCCC))
                            {
                                Local4 = Zero
                                LEV0 = One
                                Local3 = One
                                LEV1 = Zero
                                Local5 = 0x02
                                LEV2 = 0x02
                            }
                            Else
                            {
                                Local4 = Zero
                                LEV0 = One
                                Local5 = One
                                LEV1 = 0x02
                                Local3 = 0x02
                                LEV2 = Zero
                            }
                        }
                        Else
                        {
                            Local5 = Zero
                            LEV0 = 0x02
                            Local4 = One
                            LEV1 = One
                            Local3 = 0x02
                            LEV2 = Zero
                        }

                        Local1 = (\_SB.TAR0 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP3 [Local3]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                        DerefOf (TMP3 [Local3]) [One] = Local2
                        DerefOf (TMP3 [Local3]) [0x02] = \_SB.CTC0 /* External reference */
                        DerefOf (TMP3 [Local3]) [0x03] = Local1
                        DerefOf (TMP3 [Local3]) [0x04] = Zero
                        Local1 = (\_SB.TAR1 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP3 [Local4]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                        DerefOf (TMP3 [Local4]) [One] = Local2
                        DerefOf (TMP3 [Local4]) [0x02] = \_SB.CTC1 /* External reference */
                        DerefOf (TMP3 [Local4]) [0x03] = Local1
                        DerefOf (TMP3 [Local4]) [0x04] = Zero
                        Local1 = (\_SB.TAR2 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP3 [Local5]) [Zero] = CCCC /* \_SB_.PC00.TCPU.TDPL.CCCC */
                        DerefOf (TMP3 [Local5]) [One] = Local2
                        DerefOf (TMP3 [Local5]) [0x02] = \_SB.CTC2 /* External reference */
                        DerefOf (TMP3 [Local5]) [0x03] = Local1
                        DerefOf (TMP3 [Local5]) [0x04] = Zero
                        Return (TMP3) /* \_SB_.PC00.TCPU.TDPL.TMP3 */
                    }

                    If ((Local0 == 0x02))
                    {
                        If ((AAAA > BBBB))
                        {
                            Local3 = Zero
                            Local4 = One
                            LEV0 = Zero
                            LEV1 = One
                            LEV2 = Zero
                        }
                        Else
                        {
                            Local4 = Zero
                            Local3 = One
                            LEV0 = One
                            LEV1 = Zero
                            LEV2 = Zero
                        }

                        Local1 = (\_SB.TAR0 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP2 [Local3]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                        DerefOf (TMP2 [Local3]) [One] = Local2
                        DerefOf (TMP2 [Local3]) [0x02] = \_SB.CTC0 /* External reference */
                        DerefOf (TMP2 [Local3]) [0x03] = Local1
                        DerefOf (TMP2 [Local3]) [0x04] = Zero
                        Local1 = (\_SB.TAR1 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP2 [Local4]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                        DerefOf (TMP2 [Local4]) [One] = Local2
                        DerefOf (TMP2 [Local4]) [0x02] = \_SB.CTC1 /* External reference */
                        DerefOf (TMP2 [Local4]) [0x03] = Local1
                        DerefOf (TMP2 [Local4]) [0x04] = Zero
                        Return (TMP2) /* \_SB_.PC00.TCPU.TDPL.TMP2 */
                    }

                    If ((Local0 == One))
                    {
                        Switch (ToInteger (\_SB.CBMI))
                        {
                            Case (Zero)
                            {
                                Local1 = (\_SB.TAR0 + One)
                                Local2 = (Local1 * 0x64)
                                DerefOf (TMP1 [Zero]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                                DerefOf (TMP1 [Zero]) [One] = Local2
                                DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC0 /* External reference */
                                DerefOf (TMP1 [Zero]) [0x03] = Local1
                                DerefOf (TMP1 [Zero]) [0x04] = Zero
                                LEV0 = Zero
                                LEV1 = Zero
                                LEV2 = Zero
                            }
                            Case (One)
                            {
                                Local1 = (\_SB.TAR1 + One)
                                Local2 = (Local1 * 0x64)
                                DerefOf (TMP1 [Zero]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                                DerefOf (TMP1 [Zero]) [One] = Local2
                                DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC1 /* External reference */
                                DerefOf (TMP1 [Zero]) [0x03] = Local1
                                DerefOf (TMP1 [Zero]) [0x04] = Zero
                                LEV0 = One
                                LEV1 = One
                                LEV2 = One
                            }
                            Case (0x02)
                            {
                                Local1 = (\_SB.TAR2 + One)
                                Local2 = (Local1 * 0x64)
                                DerefOf (TMP1 [Zero]) [Zero] = CCCC /* \_SB_.PC00.TCPU.TDPL.CCCC */
                                DerefOf (TMP1 [Zero]) [One] = Local2
                                DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC2 /* External reference */
                                DerefOf (TMP1 [Zero]) [0x03] = Local1
                                DerefOf (TMP1 [Zero]) [0x04] = Zero
                                LEV0 = 0x02
                                LEV1 = 0x02
                                LEV2 = 0x02
                            }

                        }

                        Return (TMP1) /* \_SB_.PC00.TCPU.TDPL.TMP1 */
                    }

                    Return (Zero)
                }

                Name (MAXT, Zero)
                Method (TDPC, 0, NotSerialized)
                {
                    Return (MAXT) /* \_SB_.PC00.TCPU.MAXT */
                }

                Name (LEV0, Zero)
                Name (LEV1, Zero)
                Name (LEV2, Zero)
                Method (STDP, 1, Serialized)
                {
                    If ((Arg0 >= \_SB.CLVL))
                    {
                        Return (Zero)
                    }

                    Switch (ToInteger (Arg0))
                    {
                        Case (Zero)
                        {
                            Local0 = LEV0 /* \_SB_.PC00.TCPU.LEV0 */
                        }
                        Case (One)
                        {
                            Local0 = LEV1 /* \_SB_.PC00.TCPU.LEV1 */
                        }
                        Case (0x02)
                        {
                            Local0 = LEV2 /* \_SB_.PC00.TCPU.LEV2 */
                        }

                    }

                    Switch (ToInteger (Local0))
                    {
                        Case (Zero)
                        {
                            CPL0 ()
                        }
                        Case (One)
                        {
                            CPL1 ()
                        }
                        Case (0x02)
                        {
                            CPL2 ()
                        }

                    }

                    Notify (\_SB.PC00.TCPU, 0x83) // Device-Specific Change
                }
            }

            Scope (\_SB.IETM)
            {
                Name (PTTL, 0x14)
                Name (PSVT, Package (0x04)
                {
                    0x02, 
                    Package (0x0C)
                    {
                        \_SB.PC00.TCPU, 
                        \_SB.PC00.TCPU, 
                        0x02, 
                        0x012C, 
                        0x0C6E, 
                        0x09, 
                        0x00010000, 
                        "MAX", 
                        0x01F4, 
                        0x0A, 
                        0x14, 
                        Zero
                    }, 

                    Package (0x0C)
                    {
                        \_SB.PC00.TCPU, 
                        \_SB.PC00.LPCB.SEN2, 
                        0x02, 
                        0x012C, 
                        0x0C6E, 
                        0x09, 
                        0x00010000, 
                        "MAX", 
                        0x01F4, 
                        0x0A, 
                        0x14, 
                        Zero
                    }, 

                    Package (0x0C)
                    {
                        \_SB.PC00.TCPU, 
                        \_SB.PC00.LPCB.SEN3, 
                        0x02, 
                        0x012C, 
                        0x0C6E, 
                        0x09, 
                        0x00010000, 
                        "MAX", 
                        0x01F4, 
                        0x0A, 
                        0x14, 
                        Zero
                    }
                })
            }

            Scope (\_SB.PC00.LPCB)
            {
                Device (SEN3)
                {
                    Name (_HID, "INTC1046")  // _HID: Hardware ID
                    Name (_UID, "SEN3")  // _UID: Unique ID
                    Name (_STR, Unicode ("Remote GT Sensor"))  // _STR: Description String
                    Name (PTYP, 0x03)
                    Name (CTYP, Zero)
                    Name (PFLG, Zero)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\S3DE == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_TMP, 0, Serialized)  // _TMP: Temperature
                    {
                        Return (\_SB.IETM.CTOK (\_SB.PC00.LPCB.M662))
                    }

                    Name (PATC, 0x02)
                    Method (PAT0, 1, Serialized)
                    {
                        Local1 = \_SB.IETM.KTOC (Arg0)
                        \_SB.PC00.LPCB.Q4LO = Local1
                        \_SB.PC00.LPCB.Q4LU = One
                    }

                    Method (PAT1, 1, Serialized)
                    {
                        Local1 = \_SB.IETM.KTOC (Arg0)
                        \_SB.PC00.LPCB.Q4HI = Local1
                        \_SB.PC00.LPCB.Q4HU = One
                    }

                    Name (GTSH, 0x14)
                    Name (LSTM, Zero)
                    Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
                    {
                        LSTM = Arg0
                        Notify (\_SB.PC00.LPCB.SEN3, 0x91) // Device-Specific
                    }

                    Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
                    {
                        Return (0x0ADE)
                    }

                    Name (S3AC, 0x3C)
                    Name (S3A1, 0x32)
                    Name (S3A2, 0x28)
                    Name (S3PV, 0x41)
                    Name (S3CC, 0x50)
                    Name (S3C3, 0x46)
                    Name (S3HP, 0x4B)
                    Name (SSP3, Zero)
                    Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
                    {
                        Return (SSP3) /* \_SB_.PC00.LPCB.SEN3.SSP3 */
                    }

                    Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
                    {
                        Local1 = \_SB.IETM.CTOK (S3AC)
                        If ((LSTM >= Local1))
                        {
                            Return ((Local1 - 0x14))
                        }
                        Else
                        {
                            Return (Local1)
                        }
                    }

                    Method (_AC4, 0, Serialized)  // _ACx: Active Cooling, x=0-9
                    {
                        Return (\_SB.IETM.CTOK (S3A1))
                    }

                    Method (_AC5, 0, Serialized)  // _ACx: Active Cooling, x=0-9
                    {
                        Return (\_SB.IETM.CTOK (S3A2))
                    }

                    Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
                    {
                        Return (\_SB.IETM.CTOK (S3PV))
                    }

                    Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
                    {
                        Return (\_SB.IETM.CTOK (S3CC))
                    }

                    Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
                    {
                        Return (\_SB.IETM.CTOK (S3C3))
                    }

                    Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
                    {
                        Return (\_SB.IETM.CTOK (S3HP))
                    }
                }
            }

            Method (GDDV, 0, Serialized)
            {
                Return (Package (0x01)
                {
                    Buffer (0x05E9)
                    {
                        /* 0000 */  0xE5, 0x1F, 0x94, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x40, 0x67, 0x64, 0x64, 0x76,  // ...@gddv
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x4F, 0x45, 0x4D, 0x20,  // ....OEM 
                        /* 0030 */  0x45, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64,  // Exported
                        /* 0038 */  0x20, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x75,  //  DataVau
                        /* 0040 */  0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // lt......
                        /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0068 */  0x00, 0x00, 0x00, 0x00, 0xF3, 0x3C, 0xE7, 0x77,  // .....<.w
                        /* 0070 */  0x41, 0x37, 0x9B, 0x53, 0xFC, 0x89, 0xF7, 0x53,  // A7.S...S
                        /* 0078 */  0x61, 0x12, 0xA6, 0x33, 0xAB, 0x9E, 0x01, 0xC2,  // a..3....
                        /* 0080 */  0xA2, 0xFD, 0x1F, 0xFB, 0xAE, 0x5D, 0x44, 0xF8,  // .....]D.
                        /* 0088 */  0x61, 0xE6, 0x21, 0x36, 0x55, 0x05, 0x00, 0x00,  // a.!6U...
                        /* 0090 */  0x52, 0x45, 0x50, 0x4F, 0x5D, 0x00, 0x00, 0x00,  // REPO]...
                        /* 0098 */  0x01, 0xEE, 0x4C, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..L.....
                        /* 00A0 */  0x00, 0x00, 0x72, 0x87, 0xCD, 0xFF, 0x6D, 0x24,  // ..r...m$
                        /* 00A8 */  0x47, 0xDB, 0x3D, 0x24, 0x92, 0xB4, 0x16, 0x6F,  // G.=$...o
                        /* 00B0 */  0x45, 0xD8, 0xC3, 0xF5, 0x66, 0x14, 0x9F, 0x22,  // E...f.."
                        /* 00B8 */  0xD7, 0xF7, 0xDE, 0x67, 0x90, 0x9A, 0xA2, 0x0D,  // ...g....
                        /* 00C0 */  0x39, 0x25, 0xAD, 0xC3, 0x1A, 0xAD, 0x52, 0x0B,  // 9%....R.
                        /* 00C8 */  0x75, 0x38, 0xE1, 0xA4, 0x14, 0x41, 0xF4, 0xCA,  // u8...A..
                        /* 00D0 */  0xE9, 0xC0, 0xFC, 0xB0, 0xF7, 0x8E, 0x54, 0x8D,  // ......T.
                        /* 00D8 */  0x68, 0xB7, 0x6E, 0xAF, 0x82, 0x40, 0x95, 0x79,  // h.n..@.y
                        /* 00E0 */  0x48, 0xF3, 0x67, 0x63, 0x78, 0x3A, 0xE1, 0x07,  // H.gcx:..
                        /* 00E8 */  0x4A, 0xEA, 0x54, 0x48, 0xDF, 0x95, 0xC6, 0xD5,  // J.TH....
                        /* 00F0 */  0xD9, 0x00, 0xD1, 0x64, 0x67, 0x12, 0x93, 0xCE,  // ...dg...
                        /* 00F8 */  0x61, 0xFC, 0xCF, 0x30, 0x6D, 0x26, 0x79, 0xEA,  // a..0m&y.
                        /* 0100 */  0xE2, 0x71, 0x88, 0xF7, 0x7D, 0xFE, 0xE2, 0xFC,  // .q..}...
                        /* 0108 */  0xED, 0x74, 0xE8, 0xE3, 0x73, 0x31, 0x25, 0x59,  // .t..s1%Y
                        /* 0110 */  0xB4, 0x3B, 0xBE, 0xD1, 0x99, 0x55, 0x4A, 0xD1,  // .;...UJ.
                        /* 0118 */  0xEE, 0xE3, 0xF4, 0x88, 0x2D, 0xFC, 0xAC, 0xA7,  // ....-...
                        /* 0120 */  0xA2, 0xB9, 0x66, 0x51, 0x71, 0x15, 0xC7, 0xA2,  // ..fQq...
                        /* 0128 */  0xA5, 0xDB, 0xEC, 0x78, 0xEE, 0x02, 0xCF, 0x35,  // ...x...5
                        /* 0130 */  0xD3, 0x97, 0x7E, 0xEB, 0x31, 0x51, 0xE3, 0x8D,  // ..~.1Q..
                        /* 0138 */  0xB2, 0x00, 0xE9, 0xDA, 0x61, 0xF2, 0x5F, 0x12,  // ....a._.
                        /* 0140 */  0x5D, 0x9F, 0xE2, 0x39, 0x14, 0xA6, 0x5B, 0x75,  // ]..9..[u
                        /* 0148 */  0xE2, 0xEA, 0x98, 0xC6, 0x1E, 0xD5, 0x89, 0x20,  // ....... 
                        /* 0150 */  0x1B, 0xD8, 0x66, 0x02, 0x93, 0x2A, 0xD4, 0xFF,  // ..f..*..
                        /* 0158 */  0x45, 0x52, 0x86, 0x85, 0x46, 0xFB, 0x0E, 0x9E,  // ER..F...
                        /* 0160 */  0xA6, 0x3A, 0x50, 0xE9, 0x6E, 0x37, 0x32, 0xF4,  // .:P.n72.
                        /* 0168 */  0xC1, 0x72, 0xCD, 0xEC, 0xBC, 0x7D, 0xD6, 0xB1,  // .r...}..
                        /* 0170 */  0x19, 0xD9, 0xE0, 0x29, 0x81, 0x23, 0x62, 0xA9,  // ...).#b.
                        /* 0178 */  0x1F, 0x77, 0xAD, 0x51, 0x5C, 0x8A, 0x71, 0x0A,  // .w.Q\.q.
                        /* 0180 */  0xD3, 0xE2, 0xAB, 0xEC, 0x16, 0xE6, 0xBA, 0x4F,  // .......O
                        /* 0188 */  0xD6, 0x0D, 0xFC, 0xE4, 0x36, 0x3C, 0xB3, 0x58,  // ....6<.X
                        /* 0190 */  0xC8, 0x5A, 0x08, 0x6D, 0xEA, 0xC9, 0x39, 0x36,  // .Z.m..96
                        /* 0198 */  0x13, 0xAF, 0xA4, 0x73, 0x82, 0x38, 0xDC, 0x5C,  // ...s.8.\
                        /* 01A0 */  0xC9, 0x2C, 0xB5, 0x43, 0x89, 0xB2, 0x2B, 0x8D,  // .,.C..+.
                        /* 01A8 */  0x92, 0x33, 0xD3, 0x54, 0xDD, 0xD1, 0xAF, 0x8C,  // .3.T....
                        /* 01B0 */  0xB4, 0x97, 0x8C, 0x5D, 0x66, 0x59, 0x5A, 0xF7,  // ...]fYZ.
                        /* 01B8 */  0x0D, 0x6B, 0x5F, 0x5A, 0xA9, 0xEB, 0xFD, 0x1A,  // .k_Z....
                        /* 01C0 */  0x7B, 0x87, 0x1D, 0xF7, 0x9F, 0xCA, 0x3B, 0xD2,  // {.....;.
                        /* 01C8 */  0x1E, 0x65, 0x9B, 0xE8, 0x41, 0xE1, 0x78, 0x0D,  // .e..A.x.
                        /* 01D0 */  0x0E, 0x93, 0xB1, 0x02, 0x4B, 0xF8, 0xAF, 0xC0,  // ....K...
                        /* 01D8 */  0x8E, 0x8A, 0xE5, 0x14, 0x78, 0x3B, 0x45, 0x95,  // ....x;E.
                        /* 01E0 */  0xFF, 0x47, 0x73, 0xB5, 0xAF, 0xD2, 0xCD, 0x43,  // .Gs....C
                        /* 01E8 */  0x3C, 0xD7, 0x5A, 0xE7, 0x3D, 0xEC, 0x8C, 0xD6,  // <.Z.=...
                        /* 01F0 */  0x03, 0xA7, 0x28, 0x96, 0xC2, 0x99, 0xB7, 0xF1,  // ..(.....
                        /* 01F8 */  0x44, 0x97, 0x56, 0xDF, 0x68, 0xA0, 0xA1, 0xFE,  // D.V.h...
                        /* 0200 */  0xBC, 0x99, 0xFD, 0xA3, 0xE8, 0x89, 0x59, 0x7F,  // ......Y.
                        /* 0208 */  0x94, 0xD4, 0x8A, 0x3D, 0xC5, 0x82, 0x5F, 0x03,  // ...=.._.
                        /* 0210 */  0xB1, 0x85, 0x21, 0xD6, 0x31, 0xF3, 0xB8, 0xD2,  // ..!.1...
                        /* 0218 */  0x2F, 0xBE, 0xA1, 0x3B, 0x92, 0xDB, 0x10, 0x23,  // /..;...#
                        /* 0220 */  0x77, 0x70, 0xAF, 0xC4, 0x64, 0xBD, 0x11, 0xEB,  // wp..d...
                        /* 0228 */  0x25, 0xA8, 0x88, 0x51, 0x8B, 0x9E, 0xF4, 0x91,  // %..Q....
                        /* 0230 */  0x74, 0xAA, 0xC5, 0xE6, 0xC3, 0x54, 0x09, 0x4A,  // t....T.J
                        /* 0238 */  0xE8, 0x8C, 0x94, 0x80, 0x8B, 0xCB, 0x99, 0xBC,  // ........
                        /* 0240 */  0x81, 0x86, 0x49, 0x80, 0x86, 0xA7, 0x11, 0x64,  // ..I....d
                        /* 0248 */  0xC1, 0x4B, 0xE6, 0xCD, 0x25, 0xD4, 0xAC, 0x3B,  // .K..%..;
                        /* 0250 */  0x8F, 0x7C, 0x08, 0x0D, 0xAA, 0xFD, 0x9D, 0x1F,  // .|......
                        /* 0258 */  0x6F, 0x20, 0x01, 0xAD, 0xA4, 0x8E, 0x41, 0x11,  // o ....A.
                        /* 0260 */  0x2F, 0x1E, 0xB8, 0x3D, 0xBB, 0xC6, 0xDD, 0x4E,  // /..=...N
                        /* 0268 */  0xAE, 0xBB, 0x11, 0xA6, 0x4D, 0xC6, 0xC7, 0xE6,  // ....M...
                        /* 0270 */  0xE0, 0x6E, 0xDA, 0xC9, 0x03, 0x75, 0x76, 0x1E,  // .n...uv.
                        /* 0278 */  0x79, 0xE0, 0xD9, 0x87, 0xB8, 0x5B, 0x16, 0x88,  // y....[..
                        /* 0280 */  0x63, 0x11, 0x3C, 0x88, 0x86, 0x4A, 0x3B, 0xBC,  // c.<..J;.
                        /* 0288 */  0x8C, 0xB1, 0x3E, 0x00, 0x59, 0x62, 0x56, 0x80,  // ..>.YbV.
                        /* 0290 */  0x04, 0xAB, 0x79, 0xD2, 0xF0, 0x1A, 0x42, 0x04,  // ..y...B.
                        /* 0298 */  0xBB, 0xE1, 0xFD, 0x16, 0xD5, 0x0D, 0x05, 0x63,  // .......c
                        /* 02A0 */  0x3D, 0x03, 0x6D, 0xCC, 0x80, 0xBE, 0xCD, 0x75,  // =.m....u
                        /* 02A8 */  0xD7, 0xB2, 0xE6, 0x45, 0x8B, 0xA5, 0x0E, 0x1D,  // ...E....
                        /* 02B0 */  0x43, 0x8E, 0xB0, 0xEE, 0xF5, 0x33, 0xB5, 0xE4,  // C....3..
                        /* 02B8 */  0xBB, 0xC9, 0xBE, 0xCD, 0x8E, 0x1B, 0x98, 0x9C,  // ........
                        /* 02C0 */  0xE9, 0x8F, 0x1B, 0xD6, 0x9C, 0xF3, 0x68, 0x0C,  // ......h.
                        /* 02C8 */  0x74, 0x24, 0x56, 0xEC, 0x3A, 0x9E, 0x77, 0xD5,  // t$V.:.w.
                        /* 02D0 */  0x4B, 0xBD, 0xAE, 0xC9, 0xD7, 0x92, 0x06, 0x3E,  // K......>
                        /* 02D8 */  0xD3, 0xCD, 0x47, 0xE6, 0x84, 0xC7, 0xEF, 0xA3,  // ..G.....
                        /* 02E0 */  0x89, 0x31, 0x26, 0xBB, 0x1F, 0x58, 0x7F, 0xD6,  // .1&..X..
                        /* 02E8 */  0xD0, 0x8C, 0x05, 0xD5, 0x76, 0x23, 0x91, 0x57,  // ....v#.W
                        /* 02F0 */  0x99, 0x78, 0xFD, 0xA6, 0xE4, 0x6A, 0xB7, 0x67,  // .x...j.g
                        /* 02F8 */  0x57, 0xED, 0x7C, 0x21, 0xA0, 0xCE, 0xA3, 0x4C,  // W.|!...L
                        /* 0300 */  0x69, 0x5B, 0xC2, 0x40, 0x18, 0xCE, 0x24, 0x6D,  // i[.@..$m
                        /* 0308 */  0xD3, 0xF0, 0xCA, 0x9E, 0x85, 0xB8, 0xA6, 0xBF,  // ........
                        /* 0310 */  0x39, 0xFE, 0xB1, 0xB2, 0x95, 0x13, 0x45, 0xEA,  // 9.....E.
                        /* 0318 */  0x51, 0x1E, 0x85, 0x5F, 0x4F, 0x8D, 0xFF, 0x97,  // Q.._O...
                        /* 0320 */  0x19, 0xAF, 0xC7, 0x01, 0x40, 0xE5, 0xA9, 0xF7,  // ....@...
                        /* 0328 */  0x35, 0xDC, 0x23, 0xB4, 0xD7, 0x1F, 0x84, 0x75,  // 5.#....u
                        /* 0330 */  0x4F, 0xE1, 0x70, 0x16, 0xAB, 0x32, 0x22, 0x6D,  // O.p..2"m
                        /* 0338 */  0x46, 0x85, 0x32, 0x23, 0x14, 0xA1, 0x9C, 0x66,  // F.2#...f
                        /* 0340 */  0x5E, 0x97, 0x0E, 0x1C, 0x9E, 0x9F, 0x15, 0xD2,  // ^.......
                        /* 0348 */  0x67, 0xF9, 0xA6, 0x11, 0xCB, 0x4A, 0x3F, 0x4E,  // g....J?N
                        /* 0350 */  0xCF, 0x66, 0x6C, 0x1D, 0x5F, 0xA2, 0xED, 0x70,  // .fl._..p
                        /* 0358 */  0x68, 0xC5, 0x23, 0x90, 0x55, 0x82, 0x0A, 0xA7,  // h.#.U...
                        /* 0360 */  0xF5, 0xAF, 0xB6, 0xD0, 0xFD, 0xF0, 0xF8, 0x78,  // .......x
                        /* 0368 */  0x93, 0x08, 0xD3, 0x2F, 0xD8, 0xD6, 0x69, 0xFB,  // .../..i.
                        /* 0370 */  0xC6, 0xF8, 0x69, 0x57, 0xEF, 0x37, 0x0E, 0xD2,  // ..iW.7..
                        /* 0378 */  0x9B, 0x41, 0xBE, 0x9A, 0x83, 0x2C, 0x39, 0x6E,  // .A...,9n
                        /* 0380 */  0xB2, 0x98, 0x7F, 0xF7, 0xBE, 0x08, 0x49, 0xA7,  // ......I.
                        /* 0388 */  0xB7, 0x1F, 0xE3, 0xCB, 0xB8, 0x38, 0x6E, 0x44,  // .....8nD
                        /* 0390 */  0xFE, 0xE9, 0x3F, 0xF2, 0xF7, 0xAE, 0xC5, 0x95,  // ..?.....
                        /* 0398 */  0xD7, 0xD5, 0xEA, 0x25, 0xB5, 0x5C, 0x32, 0x9E,  // ...%.\2.
                        /* 03A0 */  0xCE, 0xED, 0xFA, 0xF5, 0xA0, 0x0F, 0xA4, 0xA0,  // ........
                        /* 03A8 */  0xA6, 0xF3, 0xDE, 0x86, 0x24, 0x6F, 0xA6, 0xC8,  // ....$o..
                        /* 03B0 */  0xB0, 0x57, 0x92, 0x07, 0x4D, 0x11, 0xF0, 0xFE,  // .W..M...
                        /* 03B8 */  0x15, 0xF1, 0x40, 0x0E, 0x8F, 0xED, 0xBC, 0x36,  // ..@....6
                        /* 03C0 */  0x90, 0xE3, 0x7B, 0x50, 0x31, 0x15, 0x56, 0x3B,  // ..{P1.V;
                        /* 03C8 */  0xCB, 0x46, 0x6E, 0x0D, 0x03, 0x91, 0x67, 0xE0,  // .Fn...g.
                        /* 03D0 */  0xCC, 0x0A, 0xD1, 0xC5, 0xA7, 0x03, 0x19, 0xD8,  // ........
                        /* 03D8 */  0x24, 0x85, 0x0F, 0x96, 0xEF, 0x3C, 0xB6, 0x3A,  // $....<.:
                        /* 03E0 */  0xA4, 0x22, 0xC1, 0x4D, 0x6C, 0x53, 0xA8, 0x3D,  // .".MlS.=
                        /* 03E8 */  0x31, 0xEA, 0xA1, 0x1C, 0xFA, 0x7E, 0xE8, 0xB3,  // 1....~..
                        /* 03F0 */  0x5D, 0x43, 0x65, 0x64, 0x0D, 0x16, 0xCB, 0x69,  // ]Ced...i
                        /* 03F8 */  0x62, 0x74, 0xBA, 0x41, 0x78, 0x44, 0xE9, 0x14,  // bt.AxD..
                        /* 0400 */  0x48, 0x78, 0x2C, 0xEE, 0x49, 0x4E, 0xFA, 0x77,  // Hx,.IN.w
                        /* 0408 */  0x2C, 0x10, 0x56, 0xB9, 0x47, 0xEB, 0xC9, 0x64,  // ,.V.G..d
                        /* 0410 */  0xCE, 0x78, 0xAC, 0x72, 0xE3, 0xCC, 0xD3, 0x55,  // .x.r...U
                        /* 0418 */  0xA8, 0x4B, 0x06, 0x6F, 0x1C, 0x37, 0x1F, 0x66,  // .K.o.7.f
                        /* 0420 */  0x83, 0xB4, 0xD2, 0xE4, 0x6F, 0xA8, 0x88, 0x3C,  // ....o..<
                        /* 0428 */  0x07, 0xFC, 0x96, 0x09, 0x3A, 0x78, 0x42, 0x2F,  // ....:xB/
                        /* 0430 */  0x21, 0xC0, 0x45, 0x35, 0x3D, 0xC2, 0x97, 0x65,  // !.E5=..e
                        /* 0438 */  0x18, 0xB5, 0x18, 0xF0, 0x43, 0x1A, 0x69, 0x33,  // ....C.i3
                        /* 0440 */  0x53, 0x92, 0x0C, 0x4D, 0x58, 0x68, 0xFC, 0xD8,  // S..MXh..
                        /* 0448 */  0x01, 0xC5, 0xF1, 0x15, 0x70, 0x7C, 0xBA, 0x14,  // ....p|..
                        /* 0450 */  0xE6, 0x9D, 0xF5, 0xD8, 0x1F, 0xA3, 0x36, 0xF5,  // ......6.
                        /* 0458 */  0x0D, 0x5D, 0x30, 0x19, 0x20, 0xEA, 0xC8, 0xD0,  // .]0. ...
                        /* 0460 */  0x9F, 0xCC, 0x78, 0x52, 0xE3, 0xFF, 0xF8, 0x75,  // ..xR...u
                        /* 0468 */  0x51, 0x21, 0x5F, 0xF2, 0x44, 0x47, 0x98, 0xF7,  // Q!_.DG..
                        /* 0470 */  0x70, 0xA5, 0xAA, 0xED, 0x97, 0xC1, 0x53, 0xD8,  // p.....S.
                        /* 0478 */  0x6A, 0x6C, 0x29, 0xF2, 0x64, 0x04, 0x8E, 0xE9,  // jl).d...
                        /* 0480 */  0x38, 0x3E, 0x77, 0x4C, 0xBB, 0x69, 0x37, 0x6B,  // 8>wL.i7k
                        /* 0488 */  0x7C, 0x4A, 0xB5, 0x47, 0x4E, 0x3B, 0x6B, 0x7F,  // |J.GN;k.
                        /* 0490 */  0x17, 0x2F, 0xFF, 0x77, 0x42, 0x1B, 0x29, 0x72,  // ./.wB.)r
                        /* 0498 */  0xC8, 0x98, 0x27, 0x16, 0x7E, 0x81, 0xE6, 0xE8,  // ..'.~...
                        /* 04A0 */  0x43, 0x1C, 0xE4, 0x06, 0x37, 0x58, 0x1D, 0x7F,  // C...7X..
                        /* 04A8 */  0x98, 0x40, 0x83, 0x96, 0x9C, 0x07, 0xAD, 0x21,  // .@.....!
                        /* 04B0 */  0x23, 0x90, 0x0A, 0x51, 0xA6, 0xC8, 0x50, 0xCA,  // #..Q..P.
                        /* 04B8 */  0x40, 0xE9, 0x0F, 0xDE, 0x5E, 0xAC, 0x4F, 0xD8,  // @...^.O.
                        /* 04C0 */  0xD2, 0x21, 0x19, 0xF5, 0xD7, 0x0B, 0x09, 0x62,  // .!.....b
                        /* 04C8 */  0xF3, 0xEA, 0xAB, 0x79, 0xAC, 0xC6, 0x0A, 0xFC,  // ...y....
                        /* 04D0 */  0xC6, 0xEC, 0xE2, 0x76, 0x11, 0x26, 0x72, 0x57,  // ...v.&rW
                        /* 04D8 */  0x7C, 0x6D, 0x00, 0x77, 0x1A, 0x9E, 0x19, 0xAF,  // |m.w....
                        /* 04E0 */  0x80, 0x9E, 0xC0, 0x35, 0x9E, 0xE3, 0x95, 0x33,  // ...5...3
                        /* 04E8 */  0xDA, 0x93, 0x14, 0x04, 0xD6, 0x20, 0x75, 0x2E,  // ..... u.
                        /* 04F0 */  0xF7, 0x14, 0xF0, 0x34, 0xF8, 0x9D, 0x3A, 0x4E,  // ...4..:N
                        /* 04F8 */  0x7D, 0xD3, 0xDB, 0xDD, 0x39, 0x06, 0x5A, 0x97,  // }...9.Z.
                        /* 0500 */  0x54, 0xF9, 0x7E, 0x33, 0x64, 0x4D, 0x76, 0x12,  // T.~3dMv.
                        /* 0508 */  0x0B, 0xF1, 0x18, 0x08, 0x63, 0x5A, 0x4B, 0x06,  // ....cZK.
                        /* 0510 */  0x44, 0x45, 0x50, 0x0E, 0xC6, 0x57, 0x18, 0x6E,  // DEP..W.n
                        /* 0518 */  0xA6, 0xF7, 0x3E, 0x91, 0x52, 0xA0, 0x5A, 0xD9,  // ..>.R.Z.
                        /* 0520 */  0xB4, 0x1A, 0xC7, 0x01, 0x98, 0xDD, 0xAD, 0x2B,  // .......+
                        /* 0528 */  0xF9, 0x31, 0xDF, 0x9E, 0x11, 0xE1, 0x75, 0x1B,  // .1....u.
                        /* 0530 */  0xC8, 0xA4, 0x7A, 0xE7, 0x76, 0x92, 0x06, 0x3A,  // ..z.v..:
                        /* 0538 */  0x76, 0x8F, 0x37, 0x58, 0x24, 0xB4, 0xAC, 0xDC,  // v.7X$...
                        /* 0540 */  0x77, 0x2C, 0xBA, 0xF8, 0x78, 0x0E, 0x1B, 0x1A,  // w,..x...
                        /* 0548 */  0x5B, 0x17, 0xE3, 0x75, 0x90, 0xCA, 0x7D, 0x89,  // [..u..}.
                        /* 0550 */  0xAA, 0x5E, 0xC7, 0x97, 0x14, 0x55, 0xE3, 0xFC,  // .^...U..
                        /* 0558 */  0x67, 0x19, 0xA3, 0x92, 0x3A, 0xA4, 0xB2, 0x50,  // g...:..P
                        /* 0560 */  0x33, 0xF0, 0x77, 0x01, 0xE9, 0x7C, 0xEE, 0x5A,  // 3.w..|.Z
                        /* 0568 */  0xCC, 0x87, 0x36, 0xA2, 0x24, 0x29, 0x5C, 0x0E,  // ..6.$)\.
                        /* 0570 */  0x10, 0x6A, 0x44, 0x9C, 0x39, 0x5E, 0x9F, 0x81,  // .jD.9^..
                        /* 0578 */  0xD5, 0x44, 0x6B, 0xEF, 0xE0, 0x07, 0xF0, 0x94,  // .Dk.....
                        /* 0580 */  0x3C, 0xD5, 0x0E, 0xA5, 0x51, 0xEE, 0x91, 0x46,  // <...Q..F
                        /* 0588 */  0x37, 0x65, 0x87, 0x0A, 0x5D, 0x76, 0x53, 0x4E,  // 7e..]vSN
                        /* 0590 */  0x43, 0x72, 0x8E, 0xE2, 0x80, 0xF4, 0x57, 0xBC,  // Cr....W.
                        /* 0598 */  0xD6, 0xA0, 0xFC, 0x10, 0x06, 0xF6, 0x90, 0xBC,  // ........
                        /* 05A0 */  0x6A, 0x88, 0x7D, 0x5C, 0x98, 0x05, 0x94, 0xCA,  // j.}\....
                        /* 05A8 */  0xC4, 0xAD, 0xA7, 0xA5, 0xC9, 0x33, 0xF8, 0x59,  // .....3.Y
                        /* 05B0 */  0x07, 0xB1, 0x3F, 0xF2, 0x12, 0x96, 0x70, 0xF7,  // ..?...p.
                        /* 05B8 */  0xB0, 0x3B, 0x6B, 0x0F, 0x29, 0x96, 0x80, 0x07,  // .;k.)...
                        /* 05C0 */  0x14, 0x91, 0xA4, 0x01, 0x3F, 0x3E, 0xCA, 0x7B,  // ....?>.{
                        /* 05C8 */  0xD7, 0x28, 0x55, 0xDD, 0xE5, 0x90, 0x05, 0x26,  // .(U....&
                        /* 05D0 */  0xDA, 0xBC, 0xD4, 0xE9, 0xCC, 0xAB, 0xFE, 0x93,  // ........
                        /* 05D8 */  0xE1, 0x11, 0x5F, 0x99, 0xFD, 0x1A, 0x35, 0x5D,  // .._...5]
                        /* 05E0 */  0x23, 0xE1, 0x67, 0x6F, 0x11, 0xD6, 0x48, 0x47,  // #.go..HG
                        /* 05E8 */  0x68                                             // h
                    }
                })
            }

            Method (IMOK, 1, NotSerialized)
            {
                Return (Arg0)
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Method (KTOC, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return (((Arg0 - 0x0AAC) / 0x0A))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (CTOK, 1, Serialized)
        {
            Return (((Arg0 * 0x0A) + 0x0AAC))
        }

        Method (C10K, 1, Serialized)
        {
            Name (TMP1, Buffer (0x10)
            {
                 0x00                                             // .
            })
            CreateByteField (TMP1, Zero, TMPL)
            CreateByteField (TMP1, One, TMPH)
            Local0 = (Arg0 + 0x0AAC)
            TMPL = (Local0 & 0xFF)
            TMPH = ((Local0 & 0xFF00) >> 0x08)
            ToInteger (TMP1, Local1)
            Return (Local1)
        }

        Method (K10C, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return ((Arg0 - 0x0AAC))
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

