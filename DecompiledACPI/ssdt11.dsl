/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt11.dat, Sun Oct 19 21:22:56 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002B10 (11024)
 *     Revision         0x02
 *     Checksum         0x27
 *     OEM ID           "INTEL "
 *     OEM Table ID     "DTbtSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "DTbtSsdt", 0x00001000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0, DeviceObj)
    External (_SB_.PC00.PEG1, DeviceObj)
    External (_SB_.PC00.PEG2, DeviceObj)
    External (_SB_.PC00.PEG3, DeviceObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.PWRG, IntObj)
    External (_SB_.PC00.RP01.PXP_._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.RSTG, IntObj)
    External (_SB_.PC00.RP01.SXWK, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.PWRG, IntObj)
    External (_SB_.PC00.RP05.PXP_._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.RSTG, IntObj)
    External (_SB_.PC00.RP05.SXWK, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.PWRG, IntObj)
    External (_SB_.PC00.RP09.PXP_._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.RSTG, IntObj)
    External (_SB_.PC00.RP09.SXWK, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP13, DeviceObj)
    External (_SB_.PC00.RP13.PWRG, IntObj)
    External (_SB_.PC00.RP13.PXP_._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP13.RSTG, IntObj)
    External (_SB_.PC00.RP13.SXWK, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP14, DeviceObj)
    External (_SB_.PC00.RP15, DeviceObj)
    External (_SB_.PC00.RP16, DeviceObj)
    External (_SB_.PC00.RP17, DeviceObj)
    External (_SB_.PC00.RP17.PWRG, IntObj)
    External (_SB_.PC00.RP17.PXP_._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP17.RSTG, IntObj)
    External (_SB_.PC00.RP17.SXWK, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP18, DeviceObj)
    External (_SB_.PC00.RP19, DeviceObj)
    External (_SB_.PC00.RP20, DeviceObj)
    External (_SB_.PC00.RP21, DeviceObj)
    External (_SB_.PC00.RP21.PWRG, IntObj)
    External (_SB_.PC00.RP21.PXP_._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP21.RSTG, IntObj)
    External (_SB_.PC00.RP21.SXWK, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP22, DeviceObj)
    External (_SB_.PC00.RP23, DeviceObj)
    External (_SB_.PC00.RP24, DeviceObj)
    External (_SB_.PC00.RP25, DeviceObj)
    External (_SB_.PC00.RP25.PWRG, IntObj)
    External (_SB_.PC00.RP25.PXP_._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP25.RSTG, IntObj)
    External (_SB_.PC00.RP25.SXWK, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP26, DeviceObj)
    External (_SB_.PC00.RP27, DeviceObj)
    External (_SB_.PC00.RP28, DeviceObj)
    External (_SB_.PEPD.DEVY, PkgObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (CMSK, IntObj)
    External (DTMB, MethodObj)    // 4 Arguments
    External (OSUM, UnknownObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (RPA1, MethodObj)    // 0 Arguments
    External (RPA2, MethodObj)    // 0 Arguments
    External (RPA3, MethodObj)    // 0 Arguments
    External (RPA4, MethodObj)    // 0 Arguments
    External (RPA5, MethodObj)    // 0 Arguments
    External (RPA6, MethodObj)    // 0 Arguments
    External (RPA7, MethodObj)    // 0 Arguments
    External (RPA8, MethodObj)    // 0 Arguments
    External (RPA9, MethodObj)    // 0 Arguments
    External (RPAA, MethodObj)    // 0 Arguments
    External (RPAB, MethodObj)    // 0 Arguments
    External (RPAC, MethodObj)    // 0 Arguments
    External (RPAD, MethodObj)    // 0 Arguments
    External (RPAE, MethodObj)    // 0 Arguments
    External (RPAF, MethodObj)    // 0 Arguments
    External (RPAG, MethodObj)    // 0 Arguments
    External (RPAH, MethodObj)    // 0 Arguments
    External (RPAI, MethodObj)    // 0 Arguments
    External (RPAJ, MethodObj)    // 0 Arguments
    External (RPAK, MethodObj)    // 0 Arguments
    External (RPAL, MethodObj)    // 0 Arguments
    External (RPAM, MethodObj)    // 0 Arguments
    External (RPAN, MethodObj)    // 0 Arguments
    External (RPAO, MethodObj)    // 0 Arguments
    External (RPAP, MethodObj)    // 0 Arguments
    External (RPAQ, MethodObj)    // 0 Arguments
    External (RPAR, MethodObj)    // 0 Arguments
    External (RPAS, MethodObj)    // 0 Arguments
    External (WFEV, UnknownObj)

    OperationRegion (DTNV, SystemMemory, 0x4567D000, 0x002E)
    Field (DTNV, AnyAcc, Lock, Preserve)
    {
        DTWI,   8, 
        DTHN,   8, 
        DTAR,   8, 
        DTWA,   8, 
        DTFS,   8, 
        GP5F,   8, 
        CPG0,   32, 
        RSG0,   32, 
        RS0L,   8, 
        DTCP,   8, 
        RPS0,   8, 
        RPT0,   8, 
        RPS1,   8, 
        RPT1,   8, 
        RPN0,   8, 
        RPN1,   8, 
        CPG1,   32, 
        RSG1,   32, 
        RS1L,   8, 
        CGST,   8, 
        DTPT,   8, 
        DT0E,   8, 
        DT1E,   8, 
        DTRT,   8, 
        DTRO,   16, 
        DTRC,   8, 
        DTRD,   16, 
        DG2S,   8, 
        TREV,   8, 
        TBDC,   8, 
        TCPN,   8, 
        DTOE,   8
    }

    Name (TRDO, Zero)
    Name (TRD3, Zero)
    Name (TBPE, Zero)
    Name (TOFF, Zero)
    Name (TEDC, Zero)
    Name (DSCE, Zero)
    Method (TBON, 2, Serialized)
    {
        If ((Arg1 == 0x02))
        {
            Return (One)
        }

        Switch (ToInteger (Arg0))
        {
            Case (One)
            {
                If (CondRefOf (\_SB.PC00.RP01.PXP._ON))
                {
                    \_SB.PC00.RP01.PXP._ON ()
                }
            }
            Case (0x05)
            {
                If (CondRefOf (\_SB.PC00.RP05.PXP._ON))
                {
                    \_SB.PC00.RP05.PXP._ON ()
                }
            }
            Case (0x09)
            {
                If (CondRefOf (\_SB.PC00.RP09.PXP._ON))
                {
                    \_SB.PC00.RP09.PXP._ON ()
                }
            }
            Case (0x0D)
            {
                If (CondRefOf (\_SB.PC00.RP13.PXP._ON))
                {
                    \_SB.PC00.RP13.PXP._ON ()
                }
            }
            Case (0x11)
            {
                If (CondRefOf (\_SB.PC00.RP17.PXP._ON))
                {
                    \_SB.PC00.RP17.PXP._ON ()
                }
            }
            Case (0x15)
            {
                If (CondRefOf (\_SB.PC00.RP21.PXP._ON))
                {
                    \_SB.PC00.RP21.PXP._ON ()
                }
            }
            Case (0x19)
            {
                If (CondRefOf (\_SB.PC00.RP25.PXP._ON))
                {
                    \_SB.PC00.RP25.PXP._ON ()
                }
            }

        }

        Return (Zero)
    }

    Method (TBOF, 2, Serialized)
    {
        If ((Arg1 == 0x02))
        {
            Return (One)
        }

        Switch (ToInteger (Arg0))
        {
            Case (One)
            {
                If (CondRefOf (\_SB.PC00.RP01.RSTG))
                {
                    \PIN.ON (\_SB.PC00.RP01.RSTG)
                }

                Sleep (0x0A)
                If (CondRefOf (\_SB.PC00.RP01.PWRG))
                {
                    \PIN.OFF (\_SB.PC00.RP01.PWRG)
                }
            }
            Case (0x05)
            {
                If (CondRefOf (\_SB.PC00.RP05.RSTG))
                {
                    \PIN.ON (\_SB.PC00.RP05.RSTG)
                }

                Sleep (0x0A)
                If (CondRefOf (\_SB.PC00.RP05.PWRG))
                {
                    \PIN.OFF (\_SB.PC00.RP05.PWRG)
                }
            }
            Case (0x09)
            {
                If (CondRefOf (\_SB.PC00.RP09.RSTG))
                {
                    \PIN.ON (\_SB.PC00.RP09.RSTG)
                }

                Sleep (0x0A)
                If (CondRefOf (\_SB.PC00.RP09.PWRG))
                {
                    \PIN.OFF (\_SB.PC00.RP09.PWRG)
                }
            }
            Case (0x0D)
            {
                If (CondRefOf (\_SB.PC00.RP13.RSTG))
                {
                    \PIN.ON (\_SB.PC00.RP13.RSTG)
                }

                Sleep (0x0A)
                If (CondRefOf (\_SB.PC00.RP13.PWRG))
                {
                    \PIN.OFF (\_SB.PC00.RP13.PWRG)
                }
            }
            Case (0x11)
            {
                If (CondRefOf (\_SB.PC00.RP17.RSTG))
                {
                    \PIN.ON (\_SB.PC00.RP17.RSTG)
                }

                Sleep (0x0A)
                If (CondRefOf (\_SB.PC00.RP17.PWRG))
                {
                    \PIN.OFF (\_SB.PC00.RP17.PWRG)
                }
            }
            Case (0x15)
            {
                If (CondRefOf (\_SB.PC00.RP21.RSTG))
                {
                    \PIN.ON (\_SB.PC00.RP21.RSTG)
                }

                Sleep (0x0A)
                If (CondRefOf (\_SB.PC00.RP21.PWRG))
                {
                    \PIN.OFF (\_SB.PC00.RP21.PWRG)
                }
            }
            Case (0x19)
            {
                If (CondRefOf (\_SB.PC00.RP25.RSTG))
                {
                    \PIN.ON (\_SB.PC00.RP25.RSTG)
                }

                Sleep (0x0A)
                If (CondRefOf (\_SB.PC00.RP25.PWRG))
                {
                    \PIN.OFF (\_SB.PC00.RP25.PWRG)
                }
            }

        }

        Return (Zero)
    }

    Method (DTWE, 2, Serialized)
    {
        If ((Arg1 == 0x02))
        {
            Return (One)
        }

        Switch (ToInteger (Arg0))
        {
            Case (One)
            {
                If (CondRefOf (\_SB.PC00.RP01.SXWK))
                {
                    \_SB.PC00.RP01.SXWK ()
                }
            }
            Case (0x05)
            {
                If (CondRefOf (\_SB.PC00.RP05.SXWK))
                {
                    \_SB.PC00.RP05.SXWK ()
                }
            }
            Case (0x09)
            {
                If (CondRefOf (\_SB.PC00.RP09.SXWK))
                {
                    \_SB.PC00.RP09.SXWK ()
                }
            }
            Case (0x0D)
            {
                If (CondRefOf (\_SB.PC00.RP13.SXWK))
                {
                    \_SB.PC00.RP13.SXWK ()
                }
            }
            Case (0x11)
            {
                If (CondRefOf (\_SB.PC00.RP17.SXWK))
                {
                    \_SB.PC00.RP17.SXWK ()
                }
            }
            Case (0x15)
            {
                If (CondRefOf (\_SB.PC00.RP21.SXWK))
                {
                    \_SB.PC00.RP21.SXWK ()
                }
            }
            Case (0x19)
            {
                If (CondRefOf (\_SB.PC00.RP25.SXWK))
                {
                    \_SB.PC00.RP25.SXWK ()
                }
            }

        }

        Return (Zero)
    }

    Method (TBTD, 2, Serialized)
    {
        If ((Arg1 == One))
        {
            Switch (ToInteger (Arg0))
            {
                Case (Package (0x08)
                    {
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08
                    }

)
                {
                    Local0 = 0x1C
                }
                Case (Package (0x08)
                    {
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10
                    }

)
                {
                    Local0 = 0x1D
                }
                Case (Package (0x08)
                    {
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18
                    }

)
                {
                    Local0 = 0x1B
                }
                Case (Package (0x04)
                    {
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C
                    }

)
                {
                    Local0 = 0x1A
                }

            }
        }
        ElseIf ((Arg1 == 0x02))
        {
            Switch (ToInteger (Arg0))
            {
                Case (Package (0x03)
                    {
                        One, 
                        0x02, 
                        0x03
                    }

)
                {
                    Local0 = One
                }
                Case (Package (0x01)
                    {
                        0x04
                    }

)
                {
                    Local0 = 0x06
                }

            }
        }
        Else
        {
            Local0 = 0xFF
        }

        Return (Local0)
    }

    Method (TBTF, 2, Serialized)
    {
        If ((Arg1 == One))
        {
            Switch (ToInteger (Arg0))
            {
                Case (One)
                {
                    Local0 = (\RPA1 () & 0x0F)
                }
                Case (0x02)
                {
                    Local0 = (\RPA2 () & 0x0F)
                }
                Case (0x03)
                {
                    Local0 = (\RPA3 () & 0x0F)
                }
                Case (0x04)
                {
                    Local0 = (\RPA4 () & 0x0F)
                }
                Case (0x05)
                {
                    Local0 = (\RPA5 () & 0x0F)
                }
                Case (0x06)
                {
                    Local0 = (\RPA6 () & 0x0F)
                }
                Case (0x07)
                {
                    Local0 = (\RPA7 () & 0x0F)
                }
                Case (0x08)
                {
                    Local0 = (\RPA8 () & 0x0F)
                }
                Case (0x09)
                {
                    Local0 = (\RPA9 () & 0x0F)
                }
                Case (0x0A)
                {
                    Local0 = (\RPAA () & 0x0F)
                }
                Case (0x0B)
                {
                    Local0 = (\RPAB () & 0x0F)
                }
                Case (0x0C)
                {
                    Local0 = (\RPAC () & 0x0F)
                }
                Case (0x0D)
                {
                    Local0 = (\RPAD () & 0x0F)
                }
                Case (0x0E)
                {
                    Local0 = (\RPAE () & 0x0F)
                }
                Case (0x0F)
                {
                    Local0 = (\RPAF () & 0x0F)
                }
                Case (0x10)
                {
                    Local0 = (\RPAG () & 0x0F)
                }
                Case (0x11)
                {
                    Local0 = (\RPAH () & 0x0F)
                }
                Case (0x12)
                {
                    Local0 = (\RPAI () & 0x0F)
                }
                Case (0x13)
                {
                    Local0 = (\RPAJ () & 0x0F)
                }
                Case (0x14)
                {
                    Local0 = (\RPAK () & 0x0F)
                }
                Case (0x15)
                {
                    Local0 = (\RPAL () & 0x0F)
                }
                Case (0x16)
                {
                    Local0 = (\RPAM () & 0x0F)
                }
                Case (0x17)
                {
                    Local0 = (\RPAN () & 0x0F)
                }
                Case (0x18)
                {
                    Local0 = (\RPAO () & 0x0F)
                }
                Case (0x19)
                {
                    Local0 = (\RPAP () & 0x0F)
                }
                Case (0x1A)
                {
                    Local0 = (\RPAQ () & 0x0F)
                }
                Case (0x1B)
                {
                    Local0 = (\RPAR () & 0x0F)
                }
                Case (0x1C)
                {
                    Local0 = (\RPAS () & 0x0F)
                }

            }
        }
        ElseIf ((Arg1 == 0x02))
        {
            Switch (ToInteger (Arg0))
            {
                Case (One)
                {
                    Local0 = Zero
                }
                Case (0x02)
                {
                    Local0 = One
                }
                Case (0x03)
                {
                    Local0 = 0x02
                }
                Case (0x04)
                {
                    Local0 = Zero
                }

            }
        }
        Else
        {
            Local0 = 0xFF
        }

        Return (Local0)
    }

    Method (MMRP, 2, Serialized)
    {
        Local0 = \_SB.PC00.GPCB ()
        Local0 += (TBTD (Arg0, Arg1) << 0x0F)
        Local0 += (TBTF (Arg0, Arg1) << 0x0C)
        Return (Local0)
    }

    Method (MMTB, 2, Serialized)
    {
        Local0 = \_SB.PC00.GPCB ()
        Local0 += (TBTD (Arg0, Arg1) << 0x0F)
        Local0 += (TBTF (Arg0, Arg1) << 0x0C)
        OperationRegion (MMMM, SystemMemory, Local0, 0x1A)
        Field (MMMM, AnyAcc, NoLock, Preserve)
        {
            Offset (0x19), 
            SBUS,   8
        }

        Local2 = SBUS /* \MMTB.SBUS */
        Local0 = \_SB.PC00.GPCB ()
        Local2 *= 0x00100000
        Local0 += Local2
        Return (Local0)
    }

    Method (FFTB, 2, Serialized)
    {
        Local0 = (MMTB (Arg0, Arg1) + 0x0548)
        OperationRegion (PXVD, SystemMemory, Local0, 0x08)
        Field (PXVD, DWordAcc, NoLock, Preserve)
        {
            TB2P,   32, 
            P2TB,   32
        }

        Local1 = TB2P /* \FFTB.TB2P */
        If ((Local1 == 0xFFFFFFFF))
        {
            Return (One)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (DTSX, 3, Serialized)
    {
        Local5 = \MMTB (Arg1, Arg2)
        OperationRegion (TBD1, SystemMemory, Local5, 0x0550)
        Field (TBD1, DWordAcc, NoLock, Preserve)
        {
            Offset (0x548), 
            T2P1,   32, 
            P2T1,   32
        }

        Local6 = \MMRP (Arg1, Arg2)
        OperationRegion (RP0P, SystemMemory, Local6, 0xB0)
        Field (RP0P, WordAcc, NoLock, Preserve)
        {
            Offset (0xA4), 
            PS0V,   2
        }

        Local3 = PS0V /* \DTSX.PS0V */
        If ((Local3 == 0x03))
        {
            PS0V = Zero
        }

        Local1 = 0x32
        P2T1 = Arg0
        While ((Local1 > Zero))
        {
            Local1--
            Local2 = T2P1 /* \DTSX.T2P1 */
            If (((Local2 == 0xFFFFFFFF) && (Local1 == One)))
            {
                Return (Zero)
            }

            If (((Local2 != 0xFFFFFFFF) && (Local2 & One)))
            {
                Break
            }

            If ((Local1 == One))
            {
                ADBG (Concatenate ("Error Code:", ToHexString (Local2)))
                Sleep (0x03E8)
                Return (Zero)
            }

            Sleep (0x64)
        }

        P2T1 = Zero
        PS0V = Local3
        Return (One)
    }

    Method (TPTS, 1, Serialized)
    {
        If ((DTWA == One))
        {
            Local4 = 0x05
        }
        Else
        {
            Local4 = 0x07
        }

        If (((RPS0 != Zero) && (RPN0 != Zero)))
        {
            If ((DG2S == One))
            {
                TBON (\RPS0, \RPT0)
                DTSX (Local4, \RPS0, \RPT0)
            }

            TBOF (\RPS0, \RPT0)
            If ((DTWA == One))
            {
                DTWE (\RPS0, \RPT0)
            }
        }

        If (((RPS1 != Zero) && (RPN1 != Zero)))
        {
            If ((DG2S == One))
            {
                TBON (\RPS1, \RPT1)
                DTSX (Local4, \RPS1, \RPT1)
            }

            TBOF (\RPS1, \RPT1)
            If ((DTWA == One))
            {
                DTWE (\RPS1, \RPT1)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (DTOU, 1, Serialized)
        {
            Local0 = (Arg0 + 0x0540)
            OperationRegion (PXVD, SystemMemory, Local0, 0x10)
            Field (PXVD, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DT2P,   32, 
                DP2T,   32
            }

            Local1 = 0x64
            DP2T = 0x0D
            While ((Local1 > Zero))
            {
                Local1 = (Local1 - One)
                Local2 = DT2P /* \_GPE.DTOU.DT2P */
                If (((Local2 == 0xFFFFFFFF) && (Local1 == One)))
                {
                    Return (0x02)
                }

                If (((Local2 != 0xFFFFFFFF) && (Local2 & One)))
                {
                    Break
                }

                Sleep (0x32)
            }

            DP2T = Zero
            Return (One)
        }

        Method (TBFF, 2, Serialized)
        {
            Local0 = MMTB (Arg0, Arg1)
            OperationRegion (PXVD, SystemMemory, Local0, 0x04)
            Field (PXVD, DWordAcc, NoLock, Preserve)
            {
                VEDI,   32
            }

            Local1 = VEDI /* \_GPE.TBFF.VEDI */
            If ((Local1 == 0xFFFFFFFF))
            {
                Return (DTOU (Local0))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (TSUP, 2, Serialized)
        {
            Local0 = \_SB.PC00.GPCB ()
            Local0 += (TBTD (Arg0, Arg1) << 0x0F)
            Local0 += (TBTF (Arg0, Arg1) << 0x0C)
            OperationRegion (MMMM, SystemMemory, Local0, 0x30)
            Field (MMMM, AnyAcc, NoLock, Preserve)
            {
                CMDS,   32, 
                Offset (0x19), 
                SBUS,   8, 
                SBU5,   8, 
                Offset (0x1C), 
                SEIO,   32, 
                MMBL,   32, 
                PMBL,   32
            }

            Return (PMBL) /* \_GPE.TSUP.PMBL */
        }

        Method (WSUB, 2, Serialized)
        {
            Local0 = Zero
            Local1 = Zero
            While (One)
            {
                Local1 = TSUP (Arg0, Arg1)
                If ((Local1 > 0x0001FFF1))
                {
                    Break
                }
                Else
                {
                    Local0 += One
                    If ((Local0 > 0x03E8))
                    {
                        Sleep (0x03E8)
                    }
                    Else
                    {
                        Sleep (0x10)
                    }
                }
            }
        }

        Method (WWAK, 0, NotSerialized)
        {
            Wait (WFEV, 0xFFFF)
            Signal (WFEV)
        }

        Method (NTFY, 2, Serialized)
        {
            If ((DTHN == One))
            {
                If ((Arg1 == One))
                {
                    Switch (ToInteger (Arg0))
                    {
                        Case (One)
                        {
                            Notify (\_SB.PC00.RP01, Zero) // Bus Check
                        }
                        Case (0x02)
                        {
                            Notify (\_SB.PC00.RP02, Zero) // Bus Check
                        }
                        Case (0x03)
                        {
                            Notify (\_SB.PC00.RP03, Zero) // Bus Check
                        }
                        Case (0x04)
                        {
                            Notify (\_SB.PC00.RP04, Zero) // Bus Check
                        }
                        Case (0x05)
                        {
                            Notify (\_SB.PC00.RP05, Zero) // Bus Check
                        }
                        Case (0x06)
                        {
                            Notify (\_SB.PC00.RP06, Zero) // Bus Check
                        }
                        Case (0x07)
                        {
                            Notify (\_SB.PC00.RP07, Zero) // Bus Check
                        }
                        Case (0x08)
                        {
                            Notify (\_SB.PC00.RP08, Zero) // Bus Check
                        }
                        Case (0x09)
                        {
                            Notify (\_SB.PC00.RP09, Zero) // Bus Check
                        }
                        Case (0x0A)
                        {
                            Notify (\_SB.PC00.RP10, Zero) // Bus Check
                        }
                        Case (0x0B)
                        {
                            Notify (\_SB.PC00.RP11, Zero) // Bus Check
                        }
                        Case (0x0C)
                        {
                            Notify (\_SB.PC00.RP12, Zero) // Bus Check
                        }
                        Case (0x0D)
                        {
                            Notify (\_SB.PC00.RP13, Zero) // Bus Check
                        }
                        Case (0x0E)
                        {
                            Notify (\_SB.PC00.RP14, Zero) // Bus Check
                        }
                        Case (0x0F)
                        {
                            Notify (\_SB.PC00.RP15, Zero) // Bus Check
                        }
                        Case (0x10)
                        {
                            Notify (\_SB.PC00.RP16, Zero) // Bus Check
                        }
                        Case (0x11)
                        {
                            Notify (\_SB.PC00.RP17, Zero) // Bus Check
                        }
                        Case (0x12)
                        {
                            Notify (\_SB.PC00.RP18, Zero) // Bus Check
                        }
                        Case (0x13)
                        {
                            Notify (\_SB.PC00.RP19, Zero) // Bus Check
                        }
                        Case (0x14)
                        {
                            Notify (\_SB.PC00.RP20, Zero) // Bus Check
                        }
                        Case (0x15)
                        {
                            Notify (\_SB.PC00.RP21, Zero) // Bus Check
                        }
                        Case (0x16)
                        {
                            Notify (\_SB.PC00.RP22, Zero) // Bus Check
                        }
                        Case (0x17)
                        {
                            Notify (\_SB.PC00.RP23, Zero) // Bus Check
                        }
                        Case (0x18)
                        {
                            Notify (\_SB.PC00.RP24, Zero) // Bus Check
                        }
                        Case (0x19)
                        {
                            Notify (\_SB.PC00.RP25, Zero) // Bus Check
                        }
                        Case (0x1A)
                        {
                            Notify (\_SB.PC00.RP26, Zero) // Bus Check
                        }
                        Case (0x1B)
                        {
                            Notify (\_SB.PC00.RP27, Zero) // Bus Check
                        }
                        Case (0x1C)
                        {
                            Notify (\_SB.PC00.RP28, Zero) // Bus Check
                        }

                    }
                }
                ElseIf ((Arg1 == 0x02))
                {
                    Switch (ToInteger (Arg0))
                    {
                        Case (One)
                        {
                            Notify (\_SB.PC00.PEG0, Zero) // Bus Check
                        }
                        Case (0x02)
                        {
                            Notify (\_SB.PC00.PEG1, Zero) // Bus Check
                        }
                        Case (0x03)
                        {
                            Notify (\_SB.PC00.PEG2, Zero) // Bus Check
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.PC00.PEG3))
                            {
                                Notify (\_SB.PC00.PEG3, Zero) // Bus Check
                            }
                        }

                    }
                }
            }

            P8XH (Zero, 0xC2)
            P8XH (One, 0xC2)
        }

        Method (GNIS, 2, Serialized)
        {
            If ((GP5F == Zero))
            {
                Return (Zero)
            }

            Local0 = (MMTB (Arg0, Arg1) + 0x0544)
            OperationRegion (PXVD, SystemMemory, Local0, 0x08)
            Field (PXVD, DWordAcc, NoLock, Preserve)
            {
                HPFI,   1, 
                Offset (0x04), 
                TB2P,   32
            }

            Local1 = TB2P /* \_GPE.GNIS.TB2P */
            ADBG (Concatenate ("TB2P=", ToHexString (Local1)))
            If ((Local1 == 0xFFFFFFFF))
            {
                Return (Zero)
            }

            Local2 = HPFI /* \_GPE.GNIS.HPFI */
            If ((Local2 == One))
            {
                HPFI = Zero
                Return (Zero)
            }

            Return (One)
        }

        OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
        Field (SPRT, ByteAcc, Lock, Preserve)
        {
            SSMP,   8
        }

        Method (XTBT, 2, Serialized)
        {
            DTCP = Arg0
            DTPT = Arg1
            If (((Arg0 != RPS0) && (Arg0 != RPS1)))
            {
                Return (Zero)
            }

            WWAK ()
            WSUB (Arg0, Arg1)
            If (GNIS (Arg0, Arg1))
            {
                Return (Zero)
            }

            Acquire (OSUM, 0xFFFF)
            Local1 = TBFF (Arg0, Arg1)
            If ((Local1 == One))
            {
                Sleep (0x10)
                Release (OSUM)
                Return (Zero)
            }

            If ((Local1 == 0x02))
            {
                NTFY (Arg0, Arg1)
                Sleep (0x10)
                Release (OSUM)
                Return (Zero)
            }

            NTFY (Arg0, Arg1)
            Sleep (0x10)
            Release (OSUM)
        }

        Method (DTIN, 0, Serialized)
        {
            If ((RPN0 == One))
            {
                DINI (RPS0, RPT0)
            }

            If ((RPN1 == One))
            {
                DINI (RPS1, RPT1)
            }
        }

        Method (DINI, 2, Serialized)
        {
            Local0 = MMRP (Arg0, Arg1)
            OperationRegion (RP_X, SystemMemory, Local0, 0x20)
            Field (RP_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x18), 
                PBCR,   32
            }

            Field (RP_X, AnyAcc, NoLock, Preserve)
            {
                Offset (0x19), 
                SBUS,   8
            }

            Local1 = PBCR /* \_GPE.DINI.PBCR */
            If (((SBUS == Zero) || (SBUS == 0xFF)))
            {
                Local3 = 0x3F00
                PBCR = (Local3 + 0x003F0000)
            }
            Else
            {
            }

            Local2 = MMTB (Arg0, Arg1)
            DTOU (Local2)
            PBCR = Local1
        }
    }

    If (((\DTFS == One) && ((RPS0 == One) || (RPS1 == One))))
    {
        Scope (\_SB.PC00.RP01)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x02) || (RPS1 == 0x02))))
    {
        Scope (\_SB.PC00.RP02)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x03) || (RPS1 == 0x03))))
    {
        Scope (\_SB.PC00.RP03)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x04) || (RPS1 == 0x04))))
    {
        Scope (\_SB.PC00.RP04)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x05) || (RPS1 == 0x05))))
    {
        Scope (\_SB.PC00.RP05)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x06) || (RPS1 == 0x06))))
    {
        Scope (\_SB.PC00.RP06)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x07) || (RPS1 == 0x07))))
    {
        Scope (\_SB.PC00.RP07)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x08) || (RPS1 == 0x08))))
    {
        Scope (\_SB.PC00.RP08)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x09) || (RPS1 == 0x09))))
    {
        Scope (\_SB.PC00.RP09)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x0A) || (RPS1 == 0x0A))))
    {
        Scope (\_SB.PC00.RP10)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x0B) || (RPS1 == 0x0B))))
    {
        Scope (\_SB.PC00.RP11)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x0C) || (RPS1 == 0x0C))))
    {
        Scope (\_SB.PC00.RP12)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x0D) || (RPS1 == 0x0D))))
    {
        Scope (\_SB.PC00.RP13)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x0E) || (RPS1 == 0x0E))))
    {
        Scope (\_SB.PC00.RP14)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x0F) || (RPS1 == 0x0F))))
    {
        Scope (\_SB.PC00.RP15)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x10) || (RPS1 == 0x10))))
    {
        Scope (\_SB.PC00.RP16)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x11) || (RPS1 == 0x11))))
    {
        Scope (\_SB.PC00.RP17)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x12) || (RPS1 == 0x12))))
    {
        Scope (\_SB.PC00.RP18)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x13) || (RPS1 == 0x13))))
    {
        Scope (\_SB.PC00.RP19)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x14) || (RPS1 == 0x14))))
    {
        Scope (\_SB.PC00.RP20)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x15) || (RPS1 == 0x15))))
    {
        Scope (\_SB.PC00.PEG0)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x16) || (RPS1 == 0x16))))
    {
        Scope (\_SB.PC00.PEG1)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    If (((\DTFS == One) && ((RPS0 == 0x17) || (RPS1 == 0x17))))
    {
        Scope (\_SB.PC00.PEG2)
        {
            Device (HRUS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (DTAR) /* \DTAR */
                }
            }
        }
    }

    Method (STPC, 2, Serialized)
    {
        Name (DEVI, Zero)
        Name (MENT, 0x02)
        DEVI = Arg0
        If (((DEVI + MENT) > Arg1))
        {
            Return (Zero)
        }

        Local0 = Zero
        If (((RPS0 > Zero) && RPN0))
        {
            If ((RPT0 == One))
            {
                If ((RPS0 < 0x0A))
                {
                    Local1 = Concatenate ("RP0", ToDecimalString (RPS0))
                    Local0 = One
                }
                ElseIf ((RPS0 < 0x1D))
                {
                    Local1 = Concatenate ("RP", ToDecimalString (RPS0))
                    Local0 = One
                }
            }

            If ((RPT0 == 0x02))
            {
                If ((RPS0 < 0x03))
                {
                    Local1 = Concatenate ("PEG", ToDecimalString (RPS0))
                    Local0 = One
                }
            }
        }

        If ((Local0 == One))
        {
            DerefOf (\_SB.PEPD.DEVY [DEVI]) [Zero] = Concatenate ("\\_SB.PC00.", Local1
                )
            DerefOf (\_SB.PEPD.DEVY [DEVI]) [One] = One
            DEVI++
        }

        Local0 = Zero
        If (((RPS1 > Zero) && RPN1))
        {
            If ((RPT1 == One))
            {
                If ((RPS1 < 0x0A))
                {
                    Local1 = Concatenate ("RP0", ToDecimalString (RPS1))
                    Local0 = One
                }
                ElseIf ((RPS1 < 0x1D))
                {
                    Local1 = Concatenate ("RP", ToDecimalString (RPS1))
                    Local0 = One
                }
            }

            If ((RPT1 == 0x02))
            {
                If ((RPS1 < 0x03))
                {
                    Local1 = Concatenate ("PEG", ToDecimalString (RPS1))
                    Local0 = One
                }
            }
        }

        If ((Local0 == One))
        {
            DerefOf (\_SB.PEPD.DEVY [DEVI]) [Zero] = Concatenate ("\\_SB.PC00.", Local1
                )
            DerefOf (\_SB.PEPD.DEVY [DEVI]) [One] = One
            DEVI++
        }

        Return (One)
    }

    Method (TVCF, 4, NotSerialized)
    {
        If ((Arg0 >= TCPN))
        {
            Return (Arg3)
        }

        Local3 = (TCPN * Arg2)
        If ((Local3 > 0x20))
        {
            Return (Arg3)
        }

        Local0 = (Arg0 * Arg2)
        Local1 = (One << Arg2)
        Local1--
        Local2 = (Arg1 & Local1)
        Local2 <<= Local0
        Local1 <<= Local0
        Local1 = ~Local1
        Local1 &= Arg3
        Local2 |= Local1
        Return (Local2)
    }

    Method (TVRF, 3, NotSerialized)
    {
        If ((Arg0 >= TCPN))
        {
            Return (0xFFFF)
        }

        Local3 = (TCPN * Arg1)
        If ((Local3 > 0x20))
        {
            Return (0xFFFF)
        }

        Local0 = (Arg0 * Arg1)
        Local1 = (One << Arg1)
        Local1--
        Local2 = (Arg2 >> Local0)
        Local2 &= Local1
        Return (Local2)
    }

    Method (DTMB, 4, Serialized)
    {
        ADBG (Concatenate ("DTMB - MB command  = ", ToHexString (Arg0)))
        ADBG (Concatenate ("DTMB - MB argument = ", ToHexString (Arg1)))
        Local0 = MMTB (Arg2, Arg3)
        ADBG (Concatenate ("DTMB - TB2P offset = ", ToHexString (Local0)))
        OperationRegion (DTOP, SystemMemory, Local0, 0x0550)
        Field (DTOP, DWordAcc, NoLock, Preserve)
        {
            DIVI,   32, 
            CMDR,   32, 
            Offset (0x84), 
            TBPS,   2, 
            Offset (0x548), 
            TB2P,   32, 
            P2TB,   32
        }

        If ((DIVI != 0xFFFFFFFF)){}
        Local1 = (Arg0 | One)
        Local1 |= (Arg1 << 0x08)
        P2TB = Local1
        Local2 = 0x01F4
        ADBG ("Wait for TB2P command done bit set")
        While ((Local2 > Zero))
        {
            If ((TB2P & One))
            {
                Break
            }

            Local2--
            Sleep (One)
        }

        If ((Local2 == Zero))
        {
            ADBG ("Command Timeout, timeout value = 00000000000001F4")
        }

        P2TB = Zero
        Local3 = 0x01F4
        ADBG ("Wait for TB2P command done bit cleared")
        While ((Local3 > Zero))
        {
            If (((TB2P & One) == Zero))
            {
                Break
            }

            Local3--
            Sleep (One)
        }

        If ((Local3 == Zero))
        {
            ADBG ("Command clear timeout, timeout value = 00000000000001F4")
        }

        If ((Local2 > Zero))
        {
            Return (Zero)
        }
        Else
        {
            Return (0xFF)
        }
    }

    Method (DCCM, 3, Serialized)
    {
        If ((Arg0 == One))
        {
            ADBG ("DCCM - Switch discrete USB4 host router to SW CM mode")
            Local0 = DTMB (0x46, Zero, Arg1, Arg2)
        }
        Else
        {
            ADBG ("DCCM - Switch discrete USB4 host router to FW CM mode")
            Local0 = DTMB (0x44, Zero, Arg1, Arg2)
            If ((Local0 != Zero))
            {
                Return (0xFF)
            }

            Local0 = DTMB (0x30, Zero, Arg1, Arg2)
        }

        Return (Local0)
    }

    Method (DSCM, 3, Serialized)
    {
        ADBG (Concatenate ("DSCM - DTBT Index = ", ToDecimalString (Arg2)))
        Local0 = (Arg1 & 0x07)
        Local1 = One
        If (((Arg1 & 0x80) != 0x80))
        {
            ADBG ("USB4 CM mode info valid bit is not set!")
            Return (0xFF)
        }
        Else
        {
            DSCE = Local0
            If ((Arg0 == Local0))
            {
                ADBG ("Pre-boot CM mode aligns with OS preferred CM mode")
                Local1 = Zero
            }
        }

        If ((Local1 == One))
        {
            If ((Arg2 == Zero))
            {
                If (((RPS0 != Zero) && (RPN0 != Zero)))
                {
                    ADBG (Concatenate ("DTbt 0 switch CM mode with requested mode = ", Arg0))
                    If ((DCCM (Arg0, RPS0, RPT0) == Zero))
                    {
                        ADBG (Concatenate ("DTbt 0 switch CM mode success, requested mode = ", Arg0))
                        DSCE = Arg0
                    }
                    Else
                    {
                        ADBG (Concatenate ("DTbt 0 switch CM mode failure, requested mode = ", Arg0))
                        Return (0xFF)
                    }
                }
            }
            ElseIf ((Arg2 == One))
            {
                If (((RPS1 != Zero) && (RPN1 != Zero)))
                {
                    ADBG (Concatenate ("DTbt 1 switch CM mode with requested mode ", Arg0))
                    If ((DCCM (Arg1, RPS1, RPT1) == Zero))
                    {
                        ADBG (Concatenate ("DTbt 1 switch CM mode success, requested mode = ", Arg0))
                        DSCE = Arg0
                    }
                    Else
                    {
                        ADBG (Concatenate ("DTbt 1 switch CM mode failure, requested mode = ", Arg0))
                        Return (0xFF)
                    }
                }
            }
        }

        ADBG (Concatenate ("DSCM - DSCE = ", ToHexString (DSCE)))
        Return (DSCE) /* \DSCE */
    }

    Method (DTCM, 2, Serialized)
    {
        ADBG (Concatenate ("DTCM - Requested CM mode = ", ToHexString (Arg0)))
        ADBG (Concatenate ("DTCM - Pre-boot CM Info  = ", ToHexString (Arg1)))
        If (!CondRefOf (CMSK))
        {
            ADBG ("DTCM - CMSK is not present!")
            Return (0xFF)
        }

        Local0 = 0xFF
        If ((CMSK & 0x10))
        {
            Local1 = DSCM (Arg0, Arg1, Zero)
            If ((Local1 != 0xFF))
            {
                ADBG (Concatenate ("DTCM - Apply CM mode to dTBT 0 successfully, CM mode = ", ToHexString (Local1)))
                Local0 = Local1
            }
            Else
            {
                ADBG (Concatenate ("DTCM - Fail to apply CM mode to dTBT 0, CM mode = ", ToHexString (Arg0)))
                Return (0xFF)
            }
        }

        If ((CMSK & 0x20))
        {
            Local1 = DSCM (Arg0, Arg1, One)
            If ((Local1 != 0xFF))
            {
                ADBG (Concatenate ("DTCM - Apply CM mode to dTBT 1 successfully, CM mode = ", ToHexString (Local1)))
                Local0 = Local1
            }
            Else
            {
                ADBG (Concatenate ("DTCM - Fail to apply CM mode to dTBT 1, CM mode = ", ToHexString (Arg0)))
                Return (0xFF)
            }
        }

        Return (Local0)
    }
}

