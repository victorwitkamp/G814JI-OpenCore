/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt16.dat, Sun Oct 19 21:22:56 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000A5E7 (42471)
 *     Revision         0x02
 *     Checksum         0x71
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "RplSBTbt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "_ASUS_", "RplSBTbt", 0x00001000)
{
    /*
     * iASL Warning: There were 195 external control methods found during
     * disassembly, but only 194 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.BTRK, MethodObj)    // 1 Arguments
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.CPID, UnknownObj)
    External (_SB_.CSD0, MethodObj)    // 1 Arguments
    External (_SB_.CSD3, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GLAN, DeviceObj)
    External (_SB_.PC00.HDAS, DeviceObj)
    External (_SB_.PC00.HDAS.VDID, UnknownObj)
    External (_SB_.PC00.I2C0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.I2C0.TPL1, DeviceObj)
    External (_SB_.PC00.I2C0.TPL1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.I2C1, DeviceObj)
    External (_SB_.PC00.I2C1.TPL1, DeviceObj)
    External (_SB_.PC00.I2C1.TPL1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.I2C3, DeviceObj)
    External (_SB_.PC00.I2C3.TPL1, DeviceObj)
    External (_SB_.PC00.I2C3.TPL1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.LPCB.CUMB, IntObj)
    External (_SB_.PC00.LPCB.IVGA, FieldUnitObj)
    External (_SB_.PC00.PEG0, DeviceObj)
    External (_SB_.PC00.PEG0.CEMP, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG0.CUMA, IntObj)
    External (_SB_.PC00.PEG0.D3HT, FieldUnitObj)
    External (_SB_.PC00.PEG0.DHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.DVES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.EHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.HBSL, FieldUnitObj)
    External (_SB_.PC00.PEG0.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.PCPB, IntObj)
    External (_SB_.PC00.PEG0.PEGP, DeviceObj)
    External (_SB_.PC00.PEG0.PEGP.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.PRMV, IntObj)
    External (_SB_.PC00.PEG0.PRTP, IntObj)
    External (_SB_.PC00.PEG0.RD3C, IntObj)
    External (_SB_.PC00.PEG0.SLOT, IntObj)
    External (_SB_.PC00.PEG0.TMCS, IntObj)
    External (_SB_.PC00.PEG0.VDID, UnknownObj)
    External (_SB_.PC00.PEG1, DeviceObj)
    External (_SB_.PC00.PEG1.CEDR, IntObj)
    External (_SB_.PC00.PEG1.CEMP, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG1.CMDR, UnknownObj)
    External (_SB_.PC00.PEG1.CULS, IntObj)
    External (_SB_.PC00.PEG1.CUMA, IntObj)
    External (_SB_.PC00.PEG1.D0ST, UnknownObj)
    External (_SB_.PC00.PEG1.D3HT, FieldUnitObj)
    External (_SB_.PC00.PEG1.DGCX, UnknownObj)
    External (_SB_.PC00.PEG1.DHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.DVES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.EHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.HBSL, FieldUnitObj)
    External (_SB_.PC00.PEG1.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.LREN, IntObj)
    External (_SB_.PC00.PEG1.PCPB, IntObj)
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.PC00.PEG1.PEGP.ATID, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.GC6I, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.PEGP.GC6O, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.PEGP.LTRE, IntObj)
    External (_SB_.PC00.PEG1.PEGP.NVID, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.VEID, UnknownObj)
    External (_SB_.PC00.PEG1.PRMV, IntObj)
    External (_SB_.PC00.PEG1.PRTP, IntObj)
    External (_SB_.PC00.PEG1.RD3C, IntObj)
    External (_SB_.PC00.PEG1.SLOT, IntObj)
    External (_SB_.PC00.PEG1.TDGC, UnknownObj)
    External (_SB_.PC00.PEG1.TGPC, UnknownObj)
    External (_SB_.PC00.PEG1.TMCS, IntObj)
    External (_SB_.PC00.PEG1.VDID, UnknownObj)
    External (_SB_.PC00.PEG2, DeviceObj)
    External (_SB_.PC00.PEG2.PRMV, IntObj)
    External (_SB_.PC00.PEG2.PRTP, IntObj)
    External (_SB_.PC00.PEG2.RD3C, IntObj)
    External (_SB_.PC00.PEG2.SLOT, IntObj)
    External (_SB_.PC00.PEG2.VDID, UnknownObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.PRMV, IntObj)
    External (_SB_.PC00.RP01.PRTP, IntObj)
    External (_SB_.PC00.RP01.RD3C, IntObj)
    External (_SB_.PC00.RP01.SLOT, IntObj)
    External (_SB_.PC00.RP01.VDID, UnknownObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.LASX, UnknownObj)
    External (_SB_.PC00.RP02.PRMV, IntObj)
    External (_SB_.PC00.RP02.PRTP, IntObj)
    External (_SB_.PC00.RP02.PWRG, UnknownObj)
    External (_SB_.PC00.RP02.PXSX, DeviceObj)
    External (_SB_.PC00.RP02.RD3C, IntObj)
    External (_SB_.PC00.RP02.SCLK, UnknownObj)
    External (_SB_.PC00.RP02.SLOT, IntObj)
    External (_SB_.PC00.RP02.TB2F, UnknownObj)
    External (_SB_.PC00.RP02.TB2R, UnknownObj)
    External (_SB_.PC00.RP02.TFDI, UnknownObj)
    External (_SB_.PC00.RP02.TN2B, UnknownObj)
    External (_SB_.PC00.RP02.TR2B, UnknownObj)
    External (_SB_.PC00.RP02.TR2P, UnknownObj)
    External (_SB_.PC00.RP02.VDID, UnknownObj)
    External (_SB_.PC00.RP02.WAKG, UnknownObj)
    External (_SB_.PC00.RP02.WAKP, UnknownObj)
    External (_SB_.PC00.RP02.WWEN, UnknownObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.PRMV, IntObj)
    External (_SB_.PC00.RP03.PRTP, IntObj)
    External (_SB_.PC00.RP03.RD3C, IntObj)
    External (_SB_.PC00.RP03.SLOT, IntObj)
    External (_SB_.PC00.RP03.VDID, UnknownObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.PRMV, IntObj)
    External (_SB_.PC00.RP04.PRTP, IntObj)
    External (_SB_.PC00.RP04.RD3C, IntObj)
    External (_SB_.PC00.RP04.SLOT, IntObj)
    External (_SB_.PC00.RP04.VDID, UnknownObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.PRMV, IntObj)
    External (_SB_.PC00.RP05.PRTP, IntObj)
    External (_SB_.PC00.RP05.RD3C, IntObj)
    External (_SB_.PC00.RP05.SLOT, IntObj)
    External (_SB_.PC00.RP05.VDID, UnknownObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.PRMV, IntObj)
    External (_SB_.PC00.RP06.PRTP, IntObj)
    External (_SB_.PC00.RP06.RD3C, IntObj)
    External (_SB_.PC00.RP06.SLOT, IntObj)
    External (_SB_.PC00.RP06.VDID, UnknownObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.CEMP, MethodObj)    // 1 Arguments
    External (_SB_.PC00.RP07.CUMA, IntObj)
    External (_SB_.PC00.RP07.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP07.DHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.DVES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.EHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.HBSL, FieldUnitObj)
    External (_SB_.PC00.RP07.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.PCPB, IntObj)
    External (_SB_.PC00.RP07.PRMV, IntObj)
    External (_SB_.PC00.RP07.PRTP, IntObj)
    External (_SB_.PC00.RP07.RD3C, IntObj)
    External (_SB_.PC00.RP07.SLOT, IntObj)
    External (_SB_.PC00.RP07.TMCS, IntObj)
    External (_SB_.PC00.RP07.VDID, UnknownObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.PRMV, IntObj)
    External (_SB_.PC00.RP08.PRTP, IntObj)
    External (_SB_.PC00.RP08.RD3C, IntObj)
    External (_SB_.PC00.RP08.SLOT, IntObj)
    External (_SB_.PC00.RP08.VDID, UnknownObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.D3HT, UnknownObj)
    External (_SB_.PC00.RP09.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.DPGE, UnknownObj)
    External (_SB_.PC00.RP09.HPEX, UnknownObj)
    External (_SB_.PC00.RP09.HPSX, UnknownObj)
    External (_SB_.PC00.RP09.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.L23E, UnknownObj)
    External (_SB_.PC00.RP09.L23R, UnknownObj)
    External (_SB_.PC00.RP09.LASX, UnknownObj)
    External (_SB_.PC00.RP09.NCB7, UnknownObj)
    External (_SB_.PC00.RP09.PCPB, UnknownObj)
    External (_SB_.PC00.RP09.PDCX, UnknownObj)
    External (_SB_.PC00.RP09.PDOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PDON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PDSX, UnknownObj)
    External (_SB_.PC00.RP09.PMEX, UnknownObj)
    External (_SB_.PC00.RP09.PMSX, UnknownObj)
    External (_SB_.PC00.RP09.PRMV, IntObj)
    External (_SB_.PC00.RP09.PRTP, IntObj)
    External (_SB_.PC00.RP09.PSON, UnknownObj)
    External (_SB_.PC00.RP09.PSPX, UnknownObj)
    External (_SB_.PC00.RP09.PWRG, UnknownObj)
    External (_SB_.PC00.RP09.PXSX, DeviceObj)
    External (_SB_.PC00.RP09.RD3C, IntObj)
    External (_SB_.PC00.RP09.SCLK, UnknownObj)
    External (_SB_.PC00.RP09.SLOT, IntObj)
    External (_SB_.PC00.RP09.TBDC, UnknownObj)
    External (_SB_.PC00.RP09.TBPE, UnknownObj)
    External (_SB_.PC00.RP09.TEDC, UnknownObj)
    External (_SB_.PC00.RP09.TOFF, UnknownObj)
    External (_SB_.PC00.RP09.TRD3, UnknownObj)
    External (_SB_.PC00.RP09.TRDO, UnknownObj)
    External (_SB_.PC00.RP09.TUID, UnknownObj)
    External (_SB_.PC00.RP09.TVCF, MethodObj)    // 4 Arguments
    External (_SB_.PC00.RP09.TVRF, MethodObj)    // 3 Arguments
    External (_SB_.PC00.RP09.VDID, UnknownObj)
    External (_SB_.PC00.RP09.WAKG, UnknownObj)
    External (_SB_.PC00.RP09.WAKP, UnknownObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.PRMV, IntObj)
    External (_SB_.PC00.RP10.PRTP, IntObj)
    External (_SB_.PC00.RP10.RD3C, IntObj)
    External (_SB_.PC00.RP10.SLOT, IntObj)
    External (_SB_.PC00.RP10.VDID, UnknownObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.PRMV, IntObj)
    External (_SB_.PC00.RP11.PRTP, IntObj)
    External (_SB_.PC00.RP11.RD3C, IntObj)
    External (_SB_.PC00.RP11.SLOT, IntObj)
    External (_SB_.PC00.RP11.VDID, UnknownObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.PRMV, IntObj)
    External (_SB_.PC00.RP12.PRTP, IntObj)
    External (_SB_.PC00.RP12.RD3C, IntObj)
    External (_SB_.PC00.RP12.SLOT, IntObj)
    External (_SB_.PC00.RP12.VDID, UnknownObj)
    External (_SB_.PC00.RP13, DeviceObj)
    External (_SB_.PC00.RP13.CEMP, MethodObj)    // 1 Arguments
    External (_SB_.PC00.RP13.CUMA, IntObj)
    External (_SB_.PC00.RP13.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP13.DHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP13.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP13.DVES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP13.EHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP13.HBSL, FieldUnitObj)
    External (_SB_.PC00.RP13.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP13.PCPB, IntObj)
    External (_SB_.PC00.RP13.PRMV, IntObj)
    External (_SB_.PC00.RP13.PRTP, IntObj)
    External (_SB_.PC00.RP13.PXSX, DeviceObj)
    External (_SB_.PC00.RP13.RD3C, IntObj)
    External (_SB_.PC00.RP13.SLOT, IntObj)
    External (_SB_.PC00.RP13.TMCS, IntObj)
    External (_SB_.PC00.RP13.VDID, UnknownObj)
    External (_SB_.PC00.RP14, DeviceObj)
    External (_SB_.PC00.RP14.PRMV, IntObj)
    External (_SB_.PC00.RP14.PRTP, IntObj)
    External (_SB_.PC00.RP14.RD3C, IntObj)
    External (_SB_.PC00.RP14.SLOT, IntObj)
    External (_SB_.PC00.RP14.VDID, UnknownObj)
    External (_SB_.PC00.RP15, DeviceObj)
    External (_SB_.PC00.RP15.PRMV, IntObj)
    External (_SB_.PC00.RP15.PRTP, IntObj)
    External (_SB_.PC00.RP15.RD3C, IntObj)
    External (_SB_.PC00.RP15.SLOT, IntObj)
    External (_SB_.PC00.RP15.VDID, UnknownObj)
    External (_SB_.PC00.RP16, DeviceObj)
    External (_SB_.PC00.RP16.PRMV, IntObj)
    External (_SB_.PC00.RP16.PRTP, IntObj)
    External (_SB_.PC00.RP16.RD3C, IntObj)
    External (_SB_.PC00.RP16.SLOT, IntObj)
    External (_SB_.PC00.RP16.VDID, UnknownObj)
    External (_SB_.PC00.RP17, DeviceObj)
    External (_SB_.PC00.RP17.PRMV, IntObj)
    External (_SB_.PC00.RP17.PRTP, IntObj)
    External (_SB_.PC00.RP17.RD3C, IntObj)
    External (_SB_.PC00.RP17.SLOT, IntObj)
    External (_SB_.PC00.RP17.VDID, UnknownObj)
    External (_SB_.PC00.RP18, DeviceObj)
    External (_SB_.PC00.RP18.PRMV, IntObj)
    External (_SB_.PC00.RP18.PRTP, IntObj)
    External (_SB_.PC00.RP18.RD3C, IntObj)
    External (_SB_.PC00.RP18.SLOT, IntObj)
    External (_SB_.PC00.RP18.VDID, UnknownObj)
    External (_SB_.PC00.RP19, DeviceObj)
    External (_SB_.PC00.RP19.PRMV, IntObj)
    External (_SB_.PC00.RP19.PRTP, IntObj)
    External (_SB_.PC00.RP19.RD3C, IntObj)
    External (_SB_.PC00.RP19.SLOT, IntObj)
    External (_SB_.PC00.RP19.VDID, UnknownObj)
    External (_SB_.PC00.RP20, DeviceObj)
    External (_SB_.PC00.RP20.PRMV, IntObj)
    External (_SB_.PC00.RP20.PRTP, IntObj)
    External (_SB_.PC00.RP20.RD3C, IntObj)
    External (_SB_.PC00.RP20.SLOT, IntObj)
    External (_SB_.PC00.RP20.VDID, UnknownObj)
    External (_SB_.PC00.RP21, DeviceObj)
    External (_SB_.PC00.RP21.CEMP, MethodObj)    // 1 Arguments
    External (_SB_.PC00.RP21.CUMA, IntObj)
    External (_SB_.PC00.RP21.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP21.DHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP21.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP21.DVES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP21.EHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP21.HBSL, FieldUnitObj)
    External (_SB_.PC00.RP21.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP21.PCPB, IntObj)
    External (_SB_.PC00.RP21.PRMV, IntObj)
    External (_SB_.PC00.RP21.PRTP, IntObj)
    External (_SB_.PC00.RP21.PXSX, DeviceObj)
    External (_SB_.PC00.RP21.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP21.RD3C, IntObj)
    External (_SB_.PC00.RP21.SLOT, IntObj)
    External (_SB_.PC00.RP21.TMCS, IntObj)
    External (_SB_.PC00.RP21.VDID, UnknownObj)
    External (_SB_.PC00.RP22, DeviceObj)
    External (_SB_.PC00.RP22.PRMV, IntObj)
    External (_SB_.PC00.RP22.PRTP, IntObj)
    External (_SB_.PC00.RP22.RD3C, IntObj)
    External (_SB_.PC00.RP22.SLOT, IntObj)
    External (_SB_.PC00.RP22.VDID, UnknownObj)
    External (_SB_.PC00.RP23, DeviceObj)
    External (_SB_.PC00.RP23.PRMV, IntObj)
    External (_SB_.PC00.RP23.PRTP, IntObj)
    External (_SB_.PC00.RP23.RD3C, IntObj)
    External (_SB_.PC00.RP23.SLOT, IntObj)
    External (_SB_.PC00.RP23.VDID, UnknownObj)
    External (_SB_.PC00.RP24, DeviceObj)
    External (_SB_.PC00.RP24.PRMV, IntObj)
    External (_SB_.PC00.RP24.PRTP, IntObj)
    External (_SB_.PC00.RP24.RD3C, IntObj)
    External (_SB_.PC00.RP24.SLOT, IntObj)
    External (_SB_.PC00.RP24.VDID, UnknownObj)
    External (_SB_.PC00.RP25, DeviceObj)
    External (_SB_.PC00.RP25.D3HT, UnknownObj)
    External (_SB_.PC00.RP25.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP25.DPGE, UnknownObj)
    External (_SB_.PC00.RP25.HPEX, UnknownObj)
    External (_SB_.PC00.RP25.HPSX, UnknownObj)
    External (_SB_.PC00.RP25.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP25.L23E, UnknownObj)
    External (_SB_.PC00.RP25.L23R, UnknownObj)
    External (_SB_.PC00.RP25.LASX, UnknownObj)
    External (_SB_.PC00.RP25.NCB7, UnknownObj)
    External (_SB_.PC00.RP25.PCPB, UnknownObj)
    External (_SB_.PC00.RP25.PDCX, UnknownObj)
    External (_SB_.PC00.RP25.PDOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP25.PDON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP25.PDSX, UnknownObj)
    External (_SB_.PC00.RP25.PMEX, UnknownObj)
    External (_SB_.PC00.RP25.PMSX, UnknownObj)
    External (_SB_.PC00.RP25.PRMV, IntObj)
    External (_SB_.PC00.RP25.PRTP, IntObj)
    External (_SB_.PC00.RP25.PSON, UnknownObj)
    External (_SB_.PC00.RP25.PSPX, UnknownObj)
    External (_SB_.PC00.RP25.PWRG, UnknownObj)
    External (_SB_.PC00.RP25.PXSX, DeviceObj)
    External (_SB_.PC00.RP25.RD3C, IntObj)
    External (_SB_.PC00.RP25.SCLK, UnknownObj)
    External (_SB_.PC00.RP25.SLOT, IntObj)
    External (_SB_.PC00.RP25.TBDC, UnknownObj)
    External (_SB_.PC00.RP25.TBPE, UnknownObj)
    External (_SB_.PC00.RP25.TEDC, UnknownObj)
    External (_SB_.PC00.RP25.TOFF, UnknownObj)
    External (_SB_.PC00.RP25.TRD3, UnknownObj)
    External (_SB_.PC00.RP25.TRDO, UnknownObj)
    External (_SB_.PC00.RP25.TUID, UnknownObj)
    External (_SB_.PC00.RP25.TVCF, MethodObj)    // 4 Arguments
    External (_SB_.PC00.RP25.TVRF, MethodObj)    // 3 Arguments
    External (_SB_.PC00.RP25.VDID, UnknownObj)
    External (_SB_.PC00.RP25.WAKG, UnknownObj)
    External (_SB_.PC00.RP25.WAKP, UnknownObj)
    External (_SB_.PC00.RP26, DeviceObj)
    External (_SB_.PC00.RP26.PRMV, IntObj)
    External (_SB_.PC00.RP26.PRTP, IntObj)
    External (_SB_.PC00.RP26.RD3C, IntObj)
    External (_SB_.PC00.RP26.SLOT, IntObj)
    External (_SB_.PC00.RP26.VDID, UnknownObj)
    External (_SB_.PC00.RP27, DeviceObj)
    External (_SB_.PC00.RP27.PRMV, IntObj)
    External (_SB_.PC00.RP27.PRTP, IntObj)
    External (_SB_.PC00.RP27.RD3C, IntObj)
    External (_SB_.PC00.RP27.SLOT, IntObj)
    External (_SB_.PC00.RP27.VDID, UnknownObj)
    External (_SB_.PC00.RP28, DeviceObj)
    External (_SB_.PC00.RP28.PRMV, IntObj)
    External (_SB_.PC00.RP28.PRTP, IntObj)
    External (_SB_.PC00.RP28.RD3C, IntObj)
    External (_SB_.PC00.RP28.SLOT, IntObj)
    External (_SB_.PC00.RP28.VDID, UnknownObj)
    External (_SB_.PC00.SAT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT1, DeviceObj)
    External (_SB_.PC00.SAT0.PRT2, DeviceObj)
    External (_SB_.PC00.SAT0.PRT3, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT5, DeviceObj)
    External (_SB_.PC00.SAT0.PRT5.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT6, DeviceObj)
    External (_SB_.PC00.SAT0.PRT6.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT7, DeviceObj)
    External (_SB_.PC00.UA00.BTH0, DeviceObj)
    External (_SB_.PC00.VMD0, DeviceObj)
    External (_SB_.PC00.VMD0.HBSL, UnknownObj)
    External (_SB_.PC00.VMD0.PEG0, DeviceObj)
    External (_SB_.PC00.VMD0.PEG0.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG0.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG0.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG1, DeviceObj)
    External (_SB_.PC00.VMD0.PEG1.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG1.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG1.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG2, DeviceObj)
    External (_SB_.PC00.VMD0.PEG2.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG2.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG2.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG3, DeviceObj)
    External (_SB_.PC00.VMD0.PEG3.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG3.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG3.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT0, DeviceObj)
    External (_SB_.PC00.VMD0.PRT0.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT0.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT0.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT1, DeviceObj)
    External (_SB_.PC00.VMD0.PRT1.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT1.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT1.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT2, DeviceObj)
    External (_SB_.PC00.VMD0.PRT2.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT2.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT2.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT3, DeviceObj)
    External (_SB_.PC00.VMD0.PRT3.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT3.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT3.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT4, DeviceObj)
    External (_SB_.PC00.VMD0.PRT4.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT4.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT4.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT5, DeviceObj)
    External (_SB_.PC00.VMD0.PRT5.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT5.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT5.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT6, DeviceObj)
    External (_SB_.PC00.VMD0.PRT6.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT6.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT6.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT7, DeviceObj)
    External (_SB_.PC00.VMD0.PRT7.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT7.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT7.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP01, DeviceObj)
    External (_SB_.PC00.VMD0.RP01.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP01.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP01.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP02, DeviceObj)
    External (_SB_.PC00.VMD0.RP02.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP02.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP02.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP03, DeviceObj)
    External (_SB_.PC00.VMD0.RP03.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP03.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP03.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP04, DeviceObj)
    External (_SB_.PC00.VMD0.RP04.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP04.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP04.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP05, DeviceObj)
    External (_SB_.PC00.VMD0.RP05.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP05.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP05.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP06, DeviceObj)
    External (_SB_.PC00.VMD0.RP06.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP06.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP06.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP07, DeviceObj)
    External (_SB_.PC00.VMD0.RP07.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP07.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP07.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP08, DeviceObj)
    External (_SB_.PC00.VMD0.RP08.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP08.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP08.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP09, DeviceObj)
    External (_SB_.PC00.VMD0.RP09.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP09.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP09.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP10, DeviceObj)
    External (_SB_.PC00.VMD0.RP10.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP10.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP10.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP11, DeviceObj)
    External (_SB_.PC00.VMD0.RP11.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP11.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP11.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP12, DeviceObj)
    External (_SB_.PC00.VMD0.RP12.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP12.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP12.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP13, DeviceObj)
    External (_SB_.PC00.VMD0.RP13.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP13.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP13.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP14, DeviceObj)
    External (_SB_.PC00.VMD0.RP14.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP14.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP14.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP15, DeviceObj)
    External (_SB_.PC00.VMD0.RP15.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP15.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP15.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP16, DeviceObj)
    External (_SB_.PC00.VMD0.RP16.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP16.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP16.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP17, DeviceObj)
    External (_SB_.PC00.VMD0.RP17.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP17.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP17.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP18, DeviceObj)
    External (_SB_.PC00.VMD0.RP18.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP18.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP18.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP19, DeviceObj)
    External (_SB_.PC00.VMD0.RP19.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP19.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP19.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP20, DeviceObj)
    External (_SB_.PC00.VMD0.RP20.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP20.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP20.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP21, DeviceObj)
    External (_SB_.PC00.VMD0.RP21.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP21.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP21.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP22, DeviceObj)
    External (_SB_.PC00.VMD0.RP22.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP22.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP22.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP23, DeviceObj)
    External (_SB_.PC00.VMD0.RP23.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP23.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP23.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP24, DeviceObj)
    External (_SB_.PC00.VMD0.RP24.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP24.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP24.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP25, DeviceObj)
    External (_SB_.PC00.VMD0.RP25.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP25.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP25.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP26, DeviceObj)
    External (_SB_.PC00.VMD0.RP26.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP26.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP26.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP27, DeviceObj)
    External (_SB_.PC00.VMD0.RP27.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP27.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP27.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP28, DeviceObj)
    External (_SB_.PC00.VMD0.RP28.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP28.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP28.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.VMCP, UnknownObj)
    External (_SB_.PC00.VMD0.VMR1, UnknownObj)
    External (_SB_.PC00.VMD0.VMR2, UnknownObj)
    External (_SB_.PC00.VMD0.VMR3, UnknownObj)
    External (_SB_.PC00.VMD0.VMR4, UnknownObj)
    External (_SB_.PC00.VMD0.VMS0, UnknownObj)
    External (_SB_.PC00.XDCI, DeviceObj)
    External (_SB_.PC00.XDCI.D0I3, UnknownObj)
    External (_SB_.PC00.XDCI.XDCB, UnknownObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.MEMB, UnknownObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PSD0, MethodObj)    // 1 Arguments
    External (_SB_.PSD3, MethodObj)    // 1 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SGRA, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AUDD, FieldUnitObj)
    External (AUPL, UnknownObj)
    External (D3HT, IntObj)
    External (DEID, UnknownObj)
    External (DGBA, FieldUnitObj)
    External (DGOP, FieldUnitObj)
    External (DLHR, UnknownObj)
    External (DLPW, UnknownObj)
    External (DTFS, IntObj)
    External (DTOE, IntObj)
    External (DTRC, IntObj)
    External (DTRD, IntObj)
    External (DTRO, IntObj)
    External (DTWA, IntObj)
    External (DVID, UnknownObj)
    External (ECON, IntObj)
    External (EDMX, UnknownObj)
    External (FVPE, UnknownObj)
    External (FVPP, UnknownObj)
    External (FVRE, UnknownObj)
    External (FVRP, UnknownObj)
    External (FVSP, UnknownObj)
    External (FVWP, UnknownObj)
    External (GBED, UnknownObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (GPDI, UnknownObj)
    External (GPI1, UnknownObj)
    External (GPLI, UnknownObj)
    External (GPLP, UnknownObj)
    External (GPLR, UnknownObj)
    External (HBCL, FieldUnitObj)
    External (HBPL, FieldUnitObj)
    External (HGMD, UnknownObj)
    External (HYSS, UnknownObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (MMRP, MethodObj)    // 2 Arguments
    External (MMTB, MethodObj)    // 2 Arguments
    External (OSYS, UnknownObj)
    External (P0DL, UnknownObj)
    External (P1PE, UnknownObj)
    External (P1PP, UnknownObj)
    External (P1RE, UnknownObj)
    External (P1RP, UnknownObj)
    External (P1SN, UnknownObj)
    External (P1WK, FieldUnitObj)
    External (P1WP, UnknownObj)
    External (PBRS, UnknownObj)
    External (PCHS, FieldUnitObj)
    External (PCHX, IntObj)
    External (PEP0, UnknownObj)
    External (PFCP, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PPDI, UnknownObj)
    External (PPI1, UnknownObj)
    External (PPLI, UnknownObj)
    External (PPLP, UnknownObj)
    External (PPLR, UnknownObj)
    External (PPP1, UnknownObj)
    External (PPR1, UnknownObj)
    External (PPSP, UnknownObj)
    External (PPSR, UnknownObj)
    External (PRP1, UnknownObj)
    External (PRST, UnknownObj)
    External (PS2P, UnknownObj)
    External (PS3P, UnknownObj)
    External (PSOC, MethodObj)    // 1 Arguments
    External (PSON, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (PSP2, UnknownObj)
    External (PSP3, UnknownObj)
    External (PSPE, UnknownObj)
    External (PSPR, UnknownObj)
    External (PSR2, UnknownObj)
    External (PSR3, UnknownObj)
    External (PSW2, UnknownObj)
    External (PSW3, UnknownObj)
    External (PSWP, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RPS0, IntObj)
    External (RPT0, IntObj)
    External (RTD3, IntObj)
    External (S0ID, UnknownObj)
    External (SATP, UnknownObj)
    External (SD2P, UnknownObj)
    External (SD2R, UnknownObj)
    External (SDP1, UnknownObj)
    External (SDPP, UnknownObj)
    External (SDR1, UnknownObj)
    External (SDRP, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SDS9, UnknownObj)
    External (SGPW, UnknownObj)
    External (SHSB, FieldUnitObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (SPCX, MethodObj)    // 3 Arguments
    External (SPPR, UnknownObj)
    External (SR2P, UnknownObj)
    External (SR3P, UnknownObj)
    External (SSDP, UnknownObj)
    External (SSDR, UnknownObj)
    External (STD3, FieldUnitObj)
    External (STPP, UnknownObj)
    External (TBPE, IntObj)
    External (TEDC, IntObj)
    External (TOFF, IntObj)
    External (TPDT, UnknownObj)
    External (TPLS, UnknownObj)
    External (TPLT, UnknownObj)
    External (TPP1, UnknownObj)
    External (TPR1, UnknownObj)
    External (UAMS, UnknownObj)
    External (VEND, UnknownObj)
    External (VMDE, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WBRS, UnknownObj)
    External (WFCP, UnknownObj)
    External (WLWK, UnknownObj)
    External (WPRP, UnknownObj)
    External (WRTO, UnknownObj)
    External (WWKP, UnknownObj)
    External (WWMT, UnknownObj)
    External (XDCE, UnknownObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)
    External (ZPPB, UnknownObj)

    If ((GBES != Zero)){}
    Scope (\)
    {
        Name (GPOM, 0x08)
        Method (GPRV, 2, Serialized)
        {
            Local0 = (One << Arg0)
            If (Arg1)
            {
                \GPOM |= Local0
            }
            Else
            {
                \GPOM &= ~Local0
            }

            If ((\GPOM == Zero))
            {
                \PSOC (One)
            }
            Else
            {
                \PSOC (Zero)
            }
        }

        Name (PCPB, Zero)
        Method (PCPA, 2, Serialized)
        {
            Local0 = (One << Arg0)
            If (Arg1)
            {
                \PCPB |= Local0
            }
            Else
            {
                \PCPB &= ~Local0
            }

            If ((PCPB == Zero))
            {
                \GPRV (One, Zero)
            }
            Else
            {
                \GPRV (One, One)
            }
        }

        Name (RPSM, Zero)
        Method (RPSC, 2, Serialized)
        {
            Local0 = (One << Arg0)
            If (Arg1)
            {
                \RPSM |= Local0
            }
            Else
            {
                \RPSM &= ~Local0
            }

            If ((\RPSM == Zero))
            {
                \GPRV (0x04, Zero)
            }
            Else
            {
                \GPRV (0x04, One)
            }
        }

        Name (SATM, Zero)
        Method (STMC, 2, Serialized)
        {
            Local0 = (\SATM & SPPR) /* External reference */
            SATM = Local0
            Local0 = (One << Arg0)
            If (Arg1)
            {
                \SATM |= Local0
            }
            Else
            {
                \SATM &= ~Local0
            }

            If ((\SATM == Zero))
            {
                \GPRV (Zero, Zero)
            }
            Else
            {
                \GPRV (Zero, One)
            }
        }

        Method (STMS, 1, Serialized)
        {
            Local0 = (One << Arg0)
            Local1 = (Local0 & \SATM)
            If (Local1)
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Name (AURB, 0xFFFFFFFF)
        Method (RAPC, 2, Serialized)
        {
            If ((\AURB == 0xFFFFFFFF))
            {
                \AURB = \AUPL /* External reference */
            }

            If (Arg0)
            {
                If ((\AURB >= Arg1))
                {
                    \AURB -= Arg1
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
            Else
            {
                \AURB += Arg1
                Return (One)
            }
        }

        PowerResource (SPR4, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\STMS (0x04))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \STMC (0x04, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \STMC (0x04, Zero)
            }
        }

        PowerResource (SPR5, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\STMS (0x05))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \STMC (0x05, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \STMC (0x05, Zero)
            }
        }

        PowerResource (SPR6, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (\STMS (0x06))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \STMC (0x06, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \STMC (0x06, Zero)
            }
        }
    }

    If ((FVSP == One))
    {
        Scope (\_SB.PC00.RP07)
        {
            Name (RSTG, Package (0x02)
            {
                Zero, 
                Zero
            })
            RSTG [Zero] = FVRE /* External reference */
            RSTG [One] = FVRP /* External reference */
            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PWRG [Zero] = FVPE /* External reference */
            PWRG [One] = FVPP /* External reference */
            Name (WAKG, Zero)
            WAKG = FVWP /* External reference */
            Name (WAKP, Zero)
            Name (SCLK, 0x05)
            Name (WKEN, Zero)
            Name (WOFF, Zero)
            Name (LNRD, Zero)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (CondRefOf (RD3C))
                {
                    If ((RD3C == 0x02))
                    {
                        Return (0x04)
                    }
                }

                Return (Zero)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = One
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (PPS0, 0, Serialized)
            {
            }

            Method (PPS3, 0, Serialized)
            {
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((GPRS () == Zero))
                    {
                        Return (Zero)
                    }

                    Return (PSTA ())
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((CUMA == One))
                    {
                        Return (Zero)
                    }

                    If ((PSTA () == One))
                    {
                        Return (Zero)
                    }

                    If (((\_SB.PC00.LPCB.IVGA == One) && (\_SB.PC00.LPCB.CUMB != Zero)))
                    {
                        Return (Zero)
                    }

                    If ((VDID == 0xFFFFFFFF)){}
                    ElseIf ((GPRS () == Zero)){}
                    Else
                    {
                        PON ()
                        L23D ()
                        Local0 = Zero
                        While ((\_SB.PC00.PEG1.CULS < 0x04))
                        {
                            If ((Local0 > 0x40))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Local0++
                        }
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((PSTA () == Zero))
                    {
                        Return (Zero)
                    }

                    If ((VDID == 0xFFFFFFFF)){}
                    ElseIf ((GPRS () == Zero)){}
                    Else
                    {
                        DL23 ()
                        POFF ()
                    }
                }
            }

            Method (GPPR, 0, NotSerialized)
            {
                If (CondRefOf (WAKP))
                {
                    If (((WAKP != Zero) && (WKEN == Zero)))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PCPB))
                {
                    If ((PCPB != Zero))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (DVES))
                {
                    If ((DVES () == Zero))
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (GPRS, 0, NotSerialized)
            {
                If ((CondRefOf (PRTP) && (PRTP == 0x04)))
                {
                    If (CondRefOf (\HBCL))
                    {
                        If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                        {
                            If ((\HBCL == SLOT))
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                If ((CondRefOf (PRTP) && (PRTP == 0x02)))
                {
                    If (CondRefOf (HBSL))
                    {
                        Local0 = ((SLOT - One) / 0x04)
                        If ((HBSL & (One << Local0)))
                        {
                            Return (Zero)
                        }
                    }

                    If ((CondRefOf (\HBCL) && CondRefOf (\HBPL)))
                    {
                        If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                        {
                            If ((\HBPL == (SLOT - One)))
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                If (CondRefOf (RD3C))
                {
                    If ((RD3C != 0x02))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (PSTA, 0, NotSerialized)
            {
                If (\PIN.STA (RSTG))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                If (CondRefOf (CEMP))
                {
                    CEMP (One)
                }

                If (CondRefOf (WAKG))
                {
                    \_SB.SHPO (WAKG, One)
                    \_SB.CAGS (WAKG)
                }

                If (CondRefOf (DHDW))
                {
                    DHDW ()
                }

                If ((CondRefOf (PRTP) && (PRTP == 0x02)))
                {
                    \_SB.PSD0 (SLOT)
                }

                If (CondRefOf (PWRG))
                {
                    If (CondRefOf (WOFF))
                    {
                        If ((WOFF != Zero))
                        {
                            Local0 = ((Timer - WOFF) / 0x2710)
                            If ((Local0 < 0xC8))
                            {
                                Sleep ((0xC8 - Local0))
                            }

                            WOFF = Zero
                        }
                    }

                    \PIN.ON (PWRG)
                    Sleep (PEP0)
                }

                If (CondRefOf (SCLK))
                {
                    If (CondRefOf (TMCS))
                    {
                        SPCX (SCLK, One, TMCS)
                    }
                    Else
                    {
                        SPCO (SCLK, One)
                    }
                }

                Sleep (0x02)
                \PIN.OFF (RSTG)
            }

            Method (POFF, 0, NotSerialized)
            {
                Local1 = (LNRD / 0x03E8)
                Sleep (Local1)
                \PIN.ON (RSTG)
                If ((CondRefOf (PRTP) && (PRTP == 0x02)))
                {
                    \_SB.PSD3 (SLOT)
                }

                If (CondRefOf (SCLK))
                {
                    If (CondRefOf (TMCS))
                    {
                        SPCX (SCLK, Zero, TMCS)
                    }
                    Else
                    {
                        SPCO (SCLK, Zero)
                    }
                }

                If (CondRefOf (PWRG))
                {
                    If ((GPPR () == One))
                    {
                        \PIN.OFF (PWRG)
                    }

                    If (CondRefOf (WOFF))
                    {
                        WOFF = Timer
                    }
                }

                If (CondRefOf (WAKG))
                {
                    If (((WAKG != Zero) && WKEN))
                    {
                        \_SB.SHPO (WAKG, Zero)
                    }
                }

                If (CondRefOf (EHDW))
                {
                    EHDW ()
                }

                If (CondRefOf (CEMP))
                {
                    CEMP (Zero)
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Method (UPRD, 1, Serialized)
            {
                If ((Arg0 <= 0x2710))
                {
                    LNRD = Arg0
                }

                Return (LNRD) /* \_SB_.PC00.RP07.LNRD */
            }
        }
    }

    Scope (\_SB.PC00.RP25)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = PSR2 /* External reference */
        RSTG [One] = SR2P /* External reference */
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        PWRG [Zero] = PSP2 /* External reference */
        PWRG [One] = PS2P /* External reference */
        Name (WAKG, Zero)
        WAKG = PSW2 /* External reference */
        Name (WAKP, Zero)
        Name (SCLK, 0x07)
        Name (TUID, Zero)
        Name (G2SD, Zero)
        Name (RSTF, Zero)
        Name (CSEN, Zero)
        Name (PSHR, Zero)
        Name (WKEN, Zero)
        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }

        Method (TSCH, 0, Serialized)
        {
            Local7 = \MMTB (SLOT, One)
            OperationRegion (TBDM, SystemMemory, Local7, 0x0550)
            Field (TBDM, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x84), 
                TBPS,   2, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            If ((VDID != 0xFFFFFFFF)){}
            If ((DIVI != 0xFFFFFFFF)){}
            Local7 += 0x00108000
            OperationRegion (TDS0, SystemMemory, Local7, 0x0100)
            Field (TDS0, DWordAcc, NoLock, Preserve)
            {
                P0ID,   32, 
                Offset (0xD0), 
                    ,   29, 
                LAI0,   1, 
                Offset (0xD8), 
                    ,   19, 
                PDC0,   1, 
                    ,   2, 
                PDS0,   1
            }

            If ((P0ID != 0xFFFFFFFF)){}
            Local7 += 0x00010000
            OperationRegion (TDS1, SystemMemory, Local7, 0x0100)
            Field (TDS1, DWordAcc, NoLock, Preserve)
            {
                P1ID,   32, 
                Offset (0xD0), 
                    ,   29, 
                LAI1,   1, 
                Offset (0xD8), 
                    ,   19, 
                PDC1,   1, 
                    ,   2, 
                PDS1,   1
            }

            If ((P1ID != 0xFFFFFFFF)){}
            TVAL ()
        }

        Method (TVAL, 0, Serialized)
        {
        }

        Method (PPS0, 0, Serialized)
        {
            TSCH ()
            If ((CSEN == One))
            {
                Local7 = \MMRP (SLOT, One)
                OperationRegion (L23P, SystemMemory, Local7, 0x0100)
                Field (L23P, WordAcc, NoLock, Preserve)
                {
                    Offset (0xA4), 
                    D3HT,   2
                }

                CSPL ()
                CSEN = Zero
                D3HT = PSHR /* \_SB_.PC00.RP25.PSHR */
                PSHR = Zero
            }

            TSCH ()
        }

        Method (PPS3, 0, Serialized)
        {
            TSCH ()
        }

        Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
        {
            Return (Package (0x04)
            {
                ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "HotPlugSupportInD3", 
                        One
                    }
                }, 

                ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "ExternalFacingPort", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "UID", 
                        TUID
                    }
                }
            })
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If ((CondRefOf (TVCF) && CondRefOf (TVRF)))
            {
                If ((Arg1 >= One))
                {
                    WKEN = Zero
                    TOFF = TVCF (TUID, 0x02, 0x04, TOFF)
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                    TOFF = TVCF (TUID, One, 0x04, TOFF)
                }
                Else
                {
                    WKEN = Zero
                    TOFF = TVCF (TUID, Zero, 0x04, TOFF)
                }
            }
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                TSCH ()
                PON ()
                TSCH ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                TSCH ()
                POFF ()
                TSCH ()
            }
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (CSEX, 0, Serialized)
        {
            Local7 = \MMTB (SLOT, One)
            OperationRegion (TBDI, SystemMemory, Local7, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            Local1 = 0xC8
            P2TB = 0x0209
            While ((Local1 > Zero))
            {
                Local1 = (Local1 - One)
                Local2 = TB2P /* \_SB_.PC00.RP25.CSEX.TB2P */
                If (((Local2 == 0xFFFFFFFF) && (Local1 == One)))
                {
                    Return (Zero)
                }

                If (((Local2 != 0xFFFFFFFF) && (Local2 & One)))
                {
                    Break
                }

                Sleep (0x05)
            }

            P2TB = Zero
            Return (One)
        }

        Method (CSPL, 0, Serialized)
        {
            Local7 = \MMTB (SLOT, One)
            OperationRegion (TBDI, SystemMemory, Local7, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            Local1 = 0x01F4
            While ((Local1 > Zero))
            {
                Local1 = (Local1 - One)
                Local2 = TB2P /* \_SB_.PC00.RP25.CSPL.TB2P */
                If ((Local2 == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((DIVI != 0xFFFFFFFF))
                {
                    Break
                }

                Sleep (0x0A)
            }
        }

        Method (PON, 0, Serialized)
        {
            Local6 = \MMTB (SLOT, One)
            OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x84), 
                TBPS,   2, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            If (TVRF (TUID, 0x04, TBPE))
            {
                Return (Zero)
            }

            G2SD = Zero
            If (CondRefOf (\DTRC))
            {
                If (\DTRC)
                {
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, One)
                    }

                    If (CondRefOf (\DTRD))
                    {
                        Sleep (\DTRD)
                    }
                }
            }

            If (CondRefOf (PWRG))
            {
                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            \PIN.OFF (RSTG)
            RSTF = Zero
            TBPE = TVCF (TUID, One, 0x04, TBPE)
            L23D ()
            If ((TVRF (TUID, 0x04, TEDC) == Zero))
            {
                Return (Zero)
            }

            PSHR = D3HT /* External reference */
            D3HT = Zero
            Local2 = 0x14
            While ((Local2 > Zero))
            {
                Local2 = (Local2 - One)
                Local3 = TB2P /* \_SB_.PC00.RP25.PON_.TB2P */
                If ((Local3 != 0xFFFFFFFF))
                {
                    Break
                }

                Sleep (0x0A)
            }

            TSCH ()
            If ((Local2 <= Zero)){}
            If ((CSEX () == One))
            {
                If (CondRefOf (TBDC))
                {
                    If ((TBDC > Zero))
                    {
                        CSPL ()
                    }
                    Else
                    {
                        CSEN = One
                    }
                }
            }

            If ((CSEN == Zero))
            {
                D3HT = PSHR /* \_SB_.PC00.RP25.PSHR */
            }

            If (CondRefOf (PDON))
            {
                PDON ()
            }
        }

        Method (POFF, 0, Serialized)
        {
            If ((TVRF (TUID, 0x04, TOFF) == Zero))
            {
                Return (Zero)
            }

            Local6 = \MMTB (SLOT, One)
            OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x84), 
                TBPS,   2, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            Local6 += 0x00108000
            OperationRegion (DSP0, SystemMemory, Local6, 0x0100)
            Field (DSP0, DWordAcc, NoLock, Preserve)
            {
                P0ID,   32, 
                Offset (0xD0), 
                    ,   29, 
                LAI0,   1, 
                Offset (0xD8), 
                    ,   19, 
                PDC0,   1, 
                    ,   2, 
                PDS0,   1
            }

            Local6 += 0x00010000
            OperationRegion (DSP1, SystemMemory, Local6, 0x0100)
            Field (DSP1, DWordAcc, NoLock, Preserve)
            {
                P1ID,   32, 
                Offset (0xD0), 
                    ,   29, 
                LAI1,   1, 
                Offset (0xD8), 
                    ,   19, 
                PDC1,   1, 
                    ,   2, 
                PDS1,   1
            }

            If ((TVRF (TUID, 0x04, TOFF) > One))
            {
                TOFF = TVCF (TUID, Zero, 0x04, TOFF)
                RSTF = One
                Return (Zero)
            }

            Local1 = D3HT /* External reference */
            D3HT = Zero
            Local3 = P2TB /* \_SB_.PC00.RP25.POFF.P2TB */
            TOFF = TVCF (TUID, Zero, 0x04, TOFF)
            Sleep (0x0A)
            Local6 = TBPS /* \_SB_.PC00.RP25.POFF.TBPS */
            TBPS = Zero
            Sleep (0x0A)
            Local2 = PDS0 /* \_SB_.PC00.RP25.POFF.PDS0 */
            Local3 = PDS1 /* \_SB_.PC00.RP25.POFF.PDS1 */
            TSCH ()
            If (((P0ID != 0xFFFFFFFF) && (P1ID != 0xFFFFFFFF)))
            {
                If (((PDC0 == One) || (PDC1 == One)))
                {
                    Notify (^, Zero) // Bus Check
                    Return (Zero)
                }
            }

            TEDC = TVCF (TUID, (PDS0 | PDS1), 0x04, TEDC)
            TBPS = Local6
            D3HT = Local1
            DL23 ()
            \PIN.ON (RSTG)
            RSTF = One
            If (\DTRC)
            {
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                }

                If (CondRefOf (\DTRD))
                {
                    Sleep (\DTRD)
                }
            }

            Sleep (0x0A)
            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WAKP))
                {
                    If (((WAKP == Zero) || !WKEN))
                    {
                        If (CondRefOf (PCPB))
                        {
                            If ((PCPB == Zero))
                            {
                                \PIN.OFF (PWRG)
                            }
                        }
                        Else
                        {
                            \PIN.OFF (PWRG)
                        }
                    }
                    Else
                    {
                    }
                }
                ElseIf (CondRefOf (PCPB))
                {
                    If ((PCPB == Zero))
                    {
                        \PIN.OFF (PWRG)
                    }
                }
                Else
                {
                    \PIN.OFF (PWRG)
                }
            }

            TBPE = TVCF (TUID, Zero, 0x04, TBPE)
            If ((\DTOE == Zero))
            {
                Sleep (\DTRO)
            }
            ElseIf (((Local2 == One) || (Local3 == One)))
            {
                Sleep (\DTRO)
            }
            Else
            {
                Sleep (0x03E8)
            }

            If (CondRefOf (PDOF))
            {
                If (PSON)
                {
                    PDOF ()
                }
            }
        }

        Method (NFRP, 0, Serialized)
        {
            If ((VDID == 0xFFFFFFFF))
            {
                Return (Zero)
            }

            Local1 = Zero
            Local2 = Zero
            If ((\DTFS == One))
            {
                HPEX = Zero
                PMEX = Zero
                Notify (^, Zero) // Bus Check
                If ((PMSX == One))
                {
                    Local2 = One
                }

                Notify (^, 0x02) // Device Wake
                Local1 = One
            }

            If ((Local1 == One))
            {
                HPSX = One
                If ((Local2 == One))
                {
                    PMSX = One
                }
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                \_SB.PC00.RP25.PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                \_SB.PC00.RP25.PXP
            })
        }

        Method (SXWK, 0, Serialized)
        {
            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && \DTWA))
                {
                    \_SB.CAGS (WAKG)
                    \_SB.SHPO (WAKG, Zero)
                }
            }
        }
    }

    Scope (\_SB.PC00.RP09)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = PSR3 /* External reference */
        RSTG [One] = SR3P /* External reference */
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        PWRG [Zero] = PSP3 /* External reference */
        PWRG [One] = PS3P /* External reference */
        Name (WAKG, Zero)
        WAKG = PSW3 /* External reference */
        Name (WAKP, Zero)
        Name (SCLK, One)
        Name (TUID, One)
        Name (G2SD, Zero)
        Name (RSTF, Zero)
        Name (CSEN, Zero)
        Name (PSHR, Zero)
        Name (WKEN, Zero)
        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }

        Method (TSCH, 0, Serialized)
        {
            Local7 = \MMTB (SLOT, One)
            OperationRegion (TBDM, SystemMemory, Local7, 0x0550)
            Field (TBDM, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x84), 
                TBPS,   2, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            If ((VDID != 0xFFFFFFFF)){}
            If ((DIVI != 0xFFFFFFFF)){}
            Local7 += 0x00108000
            OperationRegion (TDS0, SystemMemory, Local7, 0x0100)
            Field (TDS0, DWordAcc, NoLock, Preserve)
            {
                P0ID,   32, 
                Offset (0xD0), 
                    ,   29, 
                LAI0,   1, 
                Offset (0xD8), 
                    ,   19, 
                PDC0,   1, 
                    ,   2, 
                PDS0,   1
            }

            If ((P0ID != 0xFFFFFFFF)){}
            Local7 += 0x00010000
            OperationRegion (TDS1, SystemMemory, Local7, 0x0100)
            Field (TDS1, DWordAcc, NoLock, Preserve)
            {
                P1ID,   32, 
                Offset (0xD0), 
                    ,   29, 
                LAI1,   1, 
                Offset (0xD8), 
                    ,   19, 
                PDC1,   1, 
                    ,   2, 
                PDS1,   1
            }

            If ((P1ID != 0xFFFFFFFF)){}
            TVAL ()
        }

        Method (TVAL, 0, Serialized)
        {
        }

        Method (PPS0, 0, Serialized)
        {
            TSCH ()
            If ((CSEN == One))
            {
                Local7 = \MMRP (SLOT, One)
                OperationRegion (L23P, SystemMemory, Local7, 0x0100)
                Field (L23P, WordAcc, NoLock, Preserve)
                {
                    Offset (0xA4), 
                    D3HT,   2
                }

                CSPL ()
                CSEN = Zero
                D3HT = PSHR /* \_SB_.PC00.RP09.PSHR */
                PSHR = Zero
            }

            TSCH ()
        }

        Method (PPS3, 0, Serialized)
        {
            TSCH ()
        }

        Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
        {
            Return (Package (0x04)
            {
                ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "HotPlugSupportInD3", 
                        One
                    }
                }, 

                ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "ExternalFacingPort", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "UID", 
                        TUID
                    }
                }
            })
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If ((CondRefOf (TVCF) && CondRefOf (TVRF)))
            {
                If ((Arg1 >= One))
                {
                    WKEN = Zero
                    TOFF = TVCF (TUID, 0x02, 0x04, TOFF)
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                    TOFF = TVCF (TUID, One, 0x04, TOFF)
                }
                Else
                {
                    WKEN = Zero
                    TOFF = TVCF (TUID, Zero, 0x04, TOFF)
                }
            }
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                TSCH ()
                PON ()
                TSCH ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                TSCH ()
                POFF ()
                TSCH ()
            }
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (CSEX, 0, Serialized)
        {
            Local7 = \MMTB (SLOT, One)
            OperationRegion (TBDI, SystemMemory, Local7, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            Local1 = 0xC8
            P2TB = 0x0209
            While ((Local1 > Zero))
            {
                Local1 = (Local1 - One)
                Local2 = TB2P /* \_SB_.PC00.RP09.CSEX.TB2P */
                If (((Local2 == 0xFFFFFFFF) && (Local1 == One)))
                {
                    Return (Zero)
                }

                If (((Local2 != 0xFFFFFFFF) && (Local2 & One)))
                {
                    Break
                }

                Sleep (0x05)
            }

            P2TB = Zero
            Return (One)
        }

        Method (CSPL, 0, Serialized)
        {
            Local7 = \MMTB (SLOT, One)
            OperationRegion (TBDI, SystemMemory, Local7, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            Local1 = 0x01F4
            While ((Local1 > Zero))
            {
                Local1 = (Local1 - One)
                Local2 = TB2P /* \_SB_.PC00.RP09.CSPL.TB2P */
                If ((Local2 == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((DIVI != 0xFFFFFFFF))
                {
                    Break
                }

                Sleep (0x0A)
            }
        }

        Method (PON, 0, Serialized)
        {
            Local6 = \MMTB (SLOT, One)
            OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x84), 
                TBPS,   2, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            If (TVRF (TUID, 0x04, TBPE))
            {
                Return (Zero)
            }

            G2SD = Zero
            If (CondRefOf (\DTRC))
            {
                If (\DTRC)
                {
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, One)
                    }

                    If (CondRefOf (\DTRD))
                    {
                        Sleep (\DTRD)
                    }
                }
            }

            If (CondRefOf (PWRG))
            {
                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            \PIN.OFF (RSTG)
            RSTF = Zero
            TBPE = TVCF (TUID, One, 0x04, TBPE)
            L23D ()
            If ((TVRF (TUID, 0x04, TEDC) == Zero))
            {
                Return (Zero)
            }

            PSHR = D3HT /* External reference */
            D3HT = Zero
            Local2 = 0x14
            While ((Local2 > Zero))
            {
                Local2 = (Local2 - One)
                Local3 = TB2P /* \_SB_.PC00.RP09.PON_.TB2P */
                If ((Local3 != 0xFFFFFFFF))
                {
                    Break
                }

                Sleep (0x0A)
            }

            TSCH ()
            If ((Local2 <= Zero)){}
            If ((CSEX () == One))
            {
                If (CondRefOf (TBDC))
                {
                    If ((TBDC > Zero))
                    {
                        CSPL ()
                    }
                    Else
                    {
                        CSEN = One
                    }
                }
            }

            If ((CSEN == Zero))
            {
                D3HT = PSHR /* \_SB_.PC00.RP09.PSHR */
            }

            If (CondRefOf (PDON))
            {
                PDON ()
            }
        }

        Method (POFF, 0, Serialized)
        {
            If ((TVRF (TUID, 0x04, TOFF) == Zero))
            {
                Return (Zero)
            }

            Local6 = \MMTB (SLOT, One)
            OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
            Field (TBDI, DWordAcc, NoLock, Preserve)
            {
                DIVI,   32, 
                CMDR,   32, 
                Offset (0x84), 
                TBPS,   2, 
                Offset (0x548), 
                TB2P,   32, 
                P2TB,   32
            }

            Local6 += 0x00108000
            OperationRegion (DSP0, SystemMemory, Local6, 0x0100)
            Field (DSP0, DWordAcc, NoLock, Preserve)
            {
                P0ID,   32, 
                Offset (0xD0), 
                    ,   29, 
                LAI0,   1, 
                Offset (0xD8), 
                    ,   19, 
                PDC0,   1, 
                    ,   2, 
                PDS0,   1
            }

            Local6 += 0x00010000
            OperationRegion (DSP1, SystemMemory, Local6, 0x0100)
            Field (DSP1, DWordAcc, NoLock, Preserve)
            {
                P1ID,   32, 
                Offset (0xD0), 
                    ,   29, 
                LAI1,   1, 
                Offset (0xD8), 
                    ,   19, 
                PDC1,   1, 
                    ,   2, 
                PDS1,   1
            }

            If ((TVRF (TUID, 0x04, TOFF) > One))
            {
                TOFF = TVCF (TUID, Zero, 0x04, TOFF)
                RSTF = One
                Return (Zero)
            }

            Local1 = D3HT /* External reference */
            D3HT = Zero
            Local3 = P2TB /* \_SB_.PC00.RP09.POFF.P2TB */
            TOFF = TVCF (TUID, Zero, 0x04, TOFF)
            Sleep (0x0A)
            Local6 = TBPS /* \_SB_.PC00.RP09.POFF.TBPS */
            TBPS = Zero
            Sleep (0x0A)
            Local2 = PDS0 /* \_SB_.PC00.RP09.POFF.PDS0 */
            Local3 = PDS1 /* \_SB_.PC00.RP09.POFF.PDS1 */
            TSCH ()
            If (((P0ID != 0xFFFFFFFF) && (P1ID != 0xFFFFFFFF)))
            {
                If (((PDC0 == One) || (PDC1 == One)))
                {
                    Notify (^, Zero) // Bus Check
                    Return (Zero)
                }
            }

            TEDC = TVCF (TUID, (PDS0 | PDS1), 0x04, TEDC)
            TBPS = Local6
            D3HT = Local1
            DL23 ()
            \PIN.ON (RSTG)
            RSTF = One
            If (\DTRC)
            {
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                }

                If (CondRefOf (\DTRD))
                {
                    Sleep (\DTRD)
                }
            }

            Sleep (0x0A)
            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WAKP))
                {
                    If (((WAKP == Zero) || !WKEN))
                    {
                        If (CondRefOf (PCPB))
                        {
                            If ((PCPB == Zero))
                            {
                                \PIN.OFF (PWRG)
                            }
                        }
                        Else
                        {
                            \PIN.OFF (PWRG)
                        }
                    }
                    Else
                    {
                    }
                }
                ElseIf (CondRefOf (PCPB))
                {
                    If ((PCPB == Zero))
                    {
                        \PIN.OFF (PWRG)
                    }
                }
                Else
                {
                    \PIN.OFF (PWRG)
                }
            }

            TBPE = TVCF (TUID, Zero, 0x04, TBPE)
            If ((\DTOE == Zero))
            {
                Sleep (\DTRO)
            }
            ElseIf (((Local2 == One) || (Local3 == One)))
            {
                Sleep (\DTRO)
            }
            Else
            {
                Sleep (0x03E8)
            }

            If (CondRefOf (PDOF))
            {
                If (PSON)
                {
                    PDOF ()
                }
            }
        }

        Method (NFRP, 0, Serialized)
        {
            If ((VDID == 0xFFFFFFFF))
            {
                Return (Zero)
            }

            Local1 = Zero
            Local2 = Zero
            If ((\DTFS == One))
            {
                HPEX = Zero
                PMEX = Zero
                Notify (^, Zero) // Bus Check
                If ((PMSX == One))
                {
                    Local2 = One
                }

                Notify (^, 0x02) // Device Wake
                Local1 = One
            }

            If ((Local1 == One))
            {
                HPSX = One
                If ((Local2 == One))
                {
                    PMSX = One
                }
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                \_SB.PC00.RP09.PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                \_SB.PC00.RP09.PXP
            })
        }

        Method (SXWK, 0, Serialized)
        {
            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && \DTWA))
                {
                    \_SB.CAGS (WAKG)
                    \_SB.SHPO (WAKG, Zero)
                }
            }
        }
    }

    If ((WRTO != Zero))
    {
        Scope (\_SB.PC00.RP02)
        {
            Name (BRST, Package (0x02)
            {
                Zero, 
                Zero
            })
            BRST [Zero] = WBRS /* External reference */
            BRST [One] = PBRS /* External reference */
            Name (RSTG, Package (0x02)
            {
                Zero, 
                Zero
            })
            RSTG [Zero] = PRST /* External reference */
            RSTG [One] = WPRP /* External reference */
            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PWRG [Zero] = WFCP /* External reference */
            PWRG [One] = PFCP /* External reference */
            Name (WAKG, Zero)
            WAKG = WWKP /* External reference */
            Name (SCLK, 0x0C)
            Name (WKEN, Zero)
            Name (WOFF, Zero)
            Name (OFEN, One)
            Name (ONEN, Zero)
            Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
            {
                If ((WRTO == 0x03))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                Local0 = Zero
                If ((((Local0 == One) && (Arg1 >= 0x03)) || ((
                    Local0 == Zero) && (Arg1 > Zero))))
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                }
            }

            If ((WWEN == 0x02))
            {
                PowerResource (PXP5, 0x00, 0x0000)
                {
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        Local0 = Acquire (\WWMT, 0x03E8)
                        If ((Local0 == Zero))
                        {
                            If ((VDID == 0xFFFFFFFF))
                            {
                                Release (\WWMT)
                                Return (Zero)
                            }

                            If ((OFEN == One))
                            {
                                Release (\WWMT)
                                Return (Zero)
                            }

                            \_SB.SHPO (WAKG, One)
                            PON5 ()
                            L23D ()
                            If (CondRefOf (WOFF))
                            {
                                If ((WOFF != Zero))
                                {
                                    WOFF = Zero
                                    Sleep (TR2P)
                                }
                            }

                            OFEN = One
                            Release (\WWMT)
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        Local0 = Acquire (\WWMT, 0x03E8)
                        If ((Local0 == Zero))
                        {
                            If ((VDID == 0xFFFFFFFF))
                            {
                                Release (\WWMT)
                                Return (Zero)
                            }

                            If ((OFEN == Zero))
                            {
                                Release (\WWMT)
                                Return (Zero)
                            }

                            DL23 ()
                            POF5 ()
                            WKEN = Zero
                            OFEN = Zero
                            Release (\WWMT)
                        }
                    }
                }

                Method (PON5, 0, Serialized)
                {
                    \_SB.PSD0 (SLOT)
                    If (CondRefOf (WOFF))
                    {
                        If ((WOFF != Zero))
                        {
                            Local0 = ((Timer - WOFF) / 0x2710)
                            If ((Local0 < TFDI))
                            {
                                Sleep ((TFDI - Local0))
                            }

                            If (CondRefOf (PWRG))
                            {
                                \PIN.ON (PWRG)
                            }

                            Sleep (TN2B)
                            If (CondRefOf (BRST))
                            {
                                \PIN.OFF (BRST)
                            }

                            Sleep (TB2R)
                        }
                    }

                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, One)
                    }

                    \PIN.OFF (RSTG)
                }

                Method (POF5, 0, Serialized)
                {
                    \PIN.ON (RSTG)
                    \_SB.PSD3 (SLOT)
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, Zero)
                        Sleep (0x10)
                    }

                    If ((WKEN == Zero))
                    {
                        Sleep (TR2B)
                        If (CondRefOf (BRST))
                        {
                            \PIN.ON (BRST)
                        }

                        Sleep (TB2F)
                        If (CondRefOf (PWRG))
                        {
                            \PIN.OFF (PWRG)
                        }

                        If (CondRefOf (WOFF))
                        {
                            WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (((WAKG != Zero) && WKEN))
                        {
                            \_SB.SHPO (WAKG, Zero)
                        }
                        Else
                        {
                            \_SB.SHPO (WAKG, One)
                        }
                    }
                }

                Scope (PXSX)
                {
                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        Local0 = Zero
                        While ((\_SB.PC00.RP02.LASX == Zero))
                        {
                            If ((Local0 > 0x14))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Local0++
                        }
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                    }
                }
            }
            Else
            {
                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        If ((ONEN == Zero))
                        {
                            Return (Zero)
                        }

                        \_SB.SHPO (WAKG, One)
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                Local0 = ((Timer - WOFF) / 0x2710)
                                If ((Local0 < 0x01F4))
                                {
                                    Sleep ((0x01F4 - Local0))
                                }
                            }
                        }

                        PON ()
                        L23D ()
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                WOFF = Zero
                                Sleep (0x01F4)
                            }
                        }

                        OFEN = One
                        ONEN = Zero
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        If ((OFEN == Zero))
                        {
                            Return (Zero)
                        }

                        DL23 ()
                        POFF ()
                        If ((WKEN == Zero))
                        {
                            \PIN.ON (BRST)
                            Sleep (0x02)
                            \PIN.OFF (PWRG)
                            If (CondRefOf (WOFF))
                            {
                                WOFF = Timer
                            }
                        }

                        If (CondRefOf (WAKG))
                        {
                            If (((WAKG != Zero) && WKEN))
                            {
                                \_SB.SHPO (WAKG, Zero)
                            }
                            Else
                            {
                                \_SB.SHPO (WAKG, One)
                            }
                        }

                        WKEN = Zero
                        OFEN = Zero
                        ONEN = One
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If (CondRefOf (PWRG))
                {
                    If (!\PIN.STA (PWRG))
                    {
                        Return (Zero)
                    }
                }

                If (\PIN.STA (RSTG))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                \_SB.PSD0 (SLOT)
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        If (CondRefOf (PWRG))
                        {
                            \PIN.ON (PWRG)
                            Sleep (PEP0)
                        }

                        \PIN.OFF (BRST)
                        Sleep (0x14)
                    }
                    Else
                    {
                        Stall (0x14)
                    }
                }
                Else
                {
                    Stall (0x14)
                }

                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, One)
                }

                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Sleep (0x64)
                    }
                }

                \PIN.OFF (RSTG)
            }

            Method (POFF, 0, NotSerialized)
            {
                \PIN.ON (RSTG)
                \_SB.PSD3 (SLOT)
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                    Sleep (0x10)
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If ((WWEN == 0x02))
                {
                    Return (Package (0x01)
                    {
                        PXP5
                    })
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }
            }

            If ((WRTO == 0x03))
            {
                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If ((WWEN == 0x02))
                    {
                        Return (Package (0x01)
                        {
                            PXP5
                        })
                    }
                    Else
                    {
                        Return (Package (0x01)
                        {
                            PXP
                        })
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.RP13)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = PSPR /* External reference */
        RSTG [One] = PPSR /* External reference */
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        PWRG [Zero] = PSPE /* External reference */
        PWRG [One] = PPSP /* External reference */
        Name (WAKG, Zero)
        WAKG = PSWP /* External reference */
        Name (WAKP, Zero)
        Name (SCLK, 0x0B)
        Name (PSPL, 0x0CE4)
        Method (BCPR, 1, Serialized)
        {
            \PCPA (Zero, Arg0)
        }

        Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
        {
            ToUUID ("6b4ad420-8fd3-4364-acf8-eb94876fd9eb") /* Unknown UUID */, 
            Package (0x00){}, 
            ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
            Package (0x01)
            {
                Package (0x02)
                {
                    "FundamentalDeviceResetTriggeredOnD3ToD0", 
                    One
                }
            }
        })
        Name (CURP, Zero)
        Method (PALC, 1, Serialized)
        {
            If ((Arg0 > PSPL))
            {
                Return (Zero)
            }
            ElseIf ((Arg0 > CURP))
            {
                Local0 = (Arg0 - CURP) /* \_SB_.PC00.RP13.CURP */
                If (RAPC (One, Local0))
                {
                    CURP = Arg0
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
            Else
            {
                Local0 = (CURP - Arg0)
                RAPC (Zero, Local0)
                Return (One)
            }
        }

        Method (PINI, 0, Serialized)
        {
            If (PALC (0x04D6))
            {
                BCPR (Zero)
            }
            Else
            {
                BCPR (One)
            }
        }

        Method (PPBA, 1, Serialized)
        {
            If ((Arg0 == 0x80000000))
            {
                BCPR (One)
                Return (0x02)
            }
            ElseIf (PALC (Arg0))
            {
                BCPR (Zero)
                Return (One)
            }
            Else
            {
                BCPR (One)
                Return (Zero)
            }
        }

        Name (WKEN, Zero)
        Name (WOFF, Zero)
        Name (LNRD, Zero)
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (CondRefOf (RD3C))
            {
                If ((RD3C == 0x02))
                {
                    Return (0x04)
                }
            }

            Return (Zero)
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = One
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
            }
        }

        Method (PPS0, 0, Serialized)
        {
        }

        Method (PPS3, 0, Serialized)
        {
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((GPRS () == Zero))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((CUMA == One))
                {
                    Return (Zero)
                }

                If ((PSTA () == One))
                {
                    Return (Zero)
                }

                If (((\_SB.PC00.LPCB.IVGA == One) && (\_SB.PC00.LPCB.CUMB != Zero)))
                {
                    Return (Zero)
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                Else
                {
                    PON ()
                    L23D ()
                    Local0 = Zero
                    While ((\_SB.PC00.PEG1.CULS < 0x04))
                    {
                        If ((Local0 > 0x40))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((PSTA () == Zero))
                {
                    Return (Zero)
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                Else
                {
                    DL23 ()
                    POFF ()
                }
            }
        }

        Method (GPPR, 0, NotSerialized)
        {
            If (CondRefOf (WAKP))
            {
                If (((WAKP != Zero) && (WKEN == Zero)))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PCPB))
            {
                If ((PCPB != Zero))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (DVES))
            {
                If ((DVES () == Zero))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (GPRS, 0, NotSerialized)
        {
            If ((CondRefOf (PRTP) && (PRTP == 0x04)))
            {
                If (CondRefOf (\HBCL))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBCL == SLOT))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                If (CondRefOf (HBSL))
                {
                    Local0 = ((SLOT - One) / 0x04)
                    If ((HBSL & (One << Local0)))
                    {
                        Return (Zero)
                    }
                }

                If ((CondRefOf (\HBCL) && CondRefOf (\HBPL)))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBPL == (SLOT - One)))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If (CondRefOf (RD3C))
            {
                If ((RD3C != 0x02))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PRMV))
            {
                If ((PRMV == One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            If (CondRefOf (CEMP))
            {
                CEMP (One)
            }

            If (CondRefOf (WAKG))
            {
                \_SB.SHPO (WAKG, One)
                \_SB.CAGS (WAKG)
            }

            If (CondRefOf (DHDW))
            {
                DHDW ()
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD0 (SLOT)
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Local0 = ((Timer - WOFF) / 0x2710)
                        If ((Local0 < 0xC8))
                        {
                            Sleep ((0xC8 - Local0))
                        }

                        WOFF = Zero
                    }
                }

                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, One, TMCS)
                }
                Else
                {
                    SPCO (SCLK, One)
                }
            }

            Sleep (0x02)
            \PIN.OFF (RSTG)
        }

        Method (POFF, 0, NotSerialized)
        {
            Local1 = (LNRD / 0x03E8)
            Sleep (Local1)
            \PIN.ON (RSTG)
            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD3 (SLOT)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, Zero, TMCS)
                }
                Else
                {
                    SPCO (SCLK, Zero)
                }
            }

            If (CondRefOf (PWRG))
            {
                If ((GPPR () == One))
                {
                    \PIN.OFF (PWRG)
                }

                If (CondRefOf (WOFF))
                {
                    WOFF = Timer
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            If (CondRefOf (EHDW))
            {
                EHDW ()
            }

            If (CondRefOf (CEMP))
            {
                CEMP (Zero)
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PC00.RP13.LNRD */
        }
    }

    Scope (\_SB.PC00.RP21)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = SSDR /* External reference */
        RSTG [One] = SDRP /* External reference */
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        PWRG [Zero] = SSDP /* External reference */
        PWRG [One] = SDPP /* External reference */
        Name (WAKG, Zero)
        Name (WAKP, Zero)
        Name (SCLK, 0x09)
        Name (WKEN, Zero)
        Name (WOFF, Zero)
        Name (LNRD, Zero)
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (CondRefOf (RD3C))
            {
                If ((RD3C == 0x02))
                {
                    Return (0x04)
                }
            }

            Return (Zero)
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = One
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
            }
        }

        Method (PPS0, 0, Serialized)
        {
        }

        Method (PPS3, 0, Serialized)
        {
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((GPRS () == Zero))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((CUMA == One))
                {
                    Return (Zero)
                }

                If ((PSTA () == One))
                {
                    Return (Zero)
                }

                If (((\_SB.PC00.LPCB.IVGA == One) && (\_SB.PC00.LPCB.CUMB != Zero)))
                {
                    Return (Zero)
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                Else
                {
                    PON ()
                    L23D ()
                    Local0 = Zero
                    While ((\_SB.PC00.PEG1.CULS < 0x04))
                    {
                        If ((Local0 > 0x40))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((PSTA () == Zero))
                {
                    Return (Zero)
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                Else
                {
                    DL23 ()
                    POFF ()
                }
            }
        }

        Method (GPPR, 0, NotSerialized)
        {
            If (CondRefOf (WAKP))
            {
                If (((WAKP != Zero) && (WKEN == Zero)))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PCPB))
            {
                If ((PCPB != Zero))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (DVES))
            {
                If ((DVES () == Zero))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (GPRS, 0, NotSerialized)
        {
            If ((CondRefOf (PRTP) && (PRTP == 0x04)))
            {
                If (CondRefOf (\HBCL))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBCL == SLOT))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                If (CondRefOf (HBSL))
                {
                    Local0 = ((SLOT - One) / 0x04)
                    If ((HBSL & (One << Local0)))
                    {
                        Return (Zero)
                    }
                }

                If ((CondRefOf (\HBCL) && CondRefOf (\HBPL)))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBPL == (SLOT - One)))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If (CondRefOf (RD3C))
            {
                If ((RD3C != 0x02))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PRMV))
            {
                If ((PRMV == One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            If (CondRefOf (CEMP))
            {
                CEMP (One)
            }

            If (CondRefOf (WAKG))
            {
                \_SB.SHPO (WAKG, One)
                \_SB.CAGS (WAKG)
            }

            If (CondRefOf (DHDW))
            {
                DHDW ()
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD0 (SLOT)
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Local0 = ((Timer - WOFF) / 0x2710)
                        If ((Local0 < 0xC8))
                        {
                            Sleep ((0xC8 - Local0))
                        }

                        WOFF = Zero
                    }
                }

                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, One, TMCS)
                }
                Else
                {
                    SPCO (SCLK, One)
                }
            }

            Sleep (0x02)
            \PIN.OFF (RSTG)
        }

        Method (POFF, 0, NotSerialized)
        {
            Local1 = (LNRD / 0x03E8)
            Sleep (Local1)
            \PIN.ON (RSTG)
            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD3 (SLOT)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, Zero, TMCS)
                }
                Else
                {
                    SPCO (SCLK, Zero)
                }
            }

            If (CondRefOf (PWRG))
            {
                If ((GPPR () == One))
                {
                    \PIN.OFF (PWRG)
                }

                If (CondRefOf (WOFF))
                {
                    WOFF = Timer
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            If (CondRefOf (EHDW))
            {
                EHDW ()
            }

            If (CondRefOf (CEMP))
            {
                CEMP (Zero)
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PC00.RP21.LNRD */
        }

        Scope (\_SB.PC00.RP21.PXSX)
        {
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (CondRefOf (^^RD3C))
                {
                    If ((^^RD3C == 0x02))
                    {
                        Return (0x04)
                    }
                }

                Return (0x03)
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (^^_PR0 ())
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (^^_PR0 ())
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Device (MINI)
            {
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (CondRefOf (PAHC))
                    {
                        If (PAHC ())
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Name (_ADR, 0xFFFF)  // _ADR: Address
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (^^^_PR0 ())
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (^^^_PR0 ())
                }
            }
        }
    }

    Scope (\_SB.PC00.PEG0)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = SD2R /* External reference */
        RSTG [One] = SDR1 /* External reference */
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        PWRG [Zero] = SD2P /* External reference */
        PWRG [One] = SDP1 /* External reference */
        Name (WAKG, Zero)
        Name (WAKP, Zero)
        Name (SCLK, Zero)
        Name (WKEN, Zero)
        Name (WOFF, Zero)
        Name (LNRD, Zero)
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (CondRefOf (RD3C))
            {
                If ((RD3C == 0x02))
                {
                    Return (0x04)
                }
            }

            Return (Zero)
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = One
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
            }
        }

        Method (PPS0, 0, Serialized)
        {
        }

        Method (PPS3, 0, Serialized)
        {
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((GPRS () == Zero))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((CUMA == One))
                {
                    Return (Zero)
                }

                If ((PSTA () == One))
                {
                    Return (Zero)
                }

                If (((\_SB.PC00.LPCB.IVGA == One) && (\_SB.PC00.LPCB.CUMB != Zero)))
                {
                    Return (Zero)
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                Else
                {
                    PON ()
                    L23D ()
                    Local0 = Zero
                    While ((\_SB.PC00.PEG1.CULS < 0x04))
                    {
                        If ((Local0 > 0x40))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((PSTA () == Zero))
                {
                    Return (Zero)
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                Else
                {
                    DL23 ()
                    POFF ()
                }
            }
        }

        Method (GPPR, 0, NotSerialized)
        {
            If (CondRefOf (WAKP))
            {
                If (((WAKP != Zero) && (WKEN == Zero)))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PCPB))
            {
                If ((PCPB != Zero))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (DVES))
            {
                If ((DVES () == Zero))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (GPRS, 0, NotSerialized)
        {
            If ((CondRefOf (PRTP) && (PRTP == 0x04)))
            {
                If (CondRefOf (\HBCL))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBCL == SLOT))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                If (CondRefOf (HBSL))
                {
                    Local0 = ((SLOT - One) / 0x04)
                    If ((HBSL & (One << Local0)))
                    {
                        Return (Zero)
                    }
                }

                If ((CondRefOf (\HBCL) && CondRefOf (\HBPL)))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBPL == (SLOT - One)))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If (CondRefOf (RD3C))
            {
                If ((RD3C != 0x02))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PRMV))
            {
                If ((PRMV == One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            If (CondRefOf (CEMP))
            {
                CEMP (One)
            }

            If (CondRefOf (WAKG))
            {
                \_SB.SHPO (WAKG, One)
                \_SB.CAGS (WAKG)
            }

            If (CondRefOf (DHDW))
            {
                DHDW ()
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD0 (SLOT)
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Local0 = ((Timer - WOFF) / 0x2710)
                        If ((Local0 < 0xC8))
                        {
                            Sleep ((0xC8 - Local0))
                        }

                        WOFF = Zero
                    }
                }

                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, One, TMCS)
                }
                Else
                {
                    SPCO (SCLK, One)
                }
            }

            Sleep (0x02)
            \PIN.OFF (RSTG)
        }

        Method (POFF, 0, NotSerialized)
        {
            Local1 = (LNRD / 0x03E8)
            Sleep (Local1)
            \PIN.ON (RSTG)
            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD3 (SLOT)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, Zero, TMCS)
                }
                Else
                {
                    SPCO (SCLK, Zero)
                }
            }

            If (CondRefOf (PWRG))
            {
                If ((GPPR () == One))
                {
                    \PIN.OFF (PWRG)
                }

                If (CondRefOf (WOFF))
                {
                    WOFF = Timer
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            If (CondRefOf (EHDW))
            {
                EHDW ()
            }

            If (CondRefOf (CEMP))
            {
                CEMP (Zero)
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PC00.PEG0.LNRD */
        }

        Scope (\_SB.PC00.PEG0.PEGP)
        {
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (CondRefOf (^^RD3C))
                {
                    If ((^^RD3C == 0x02))
                    {
                        Return (0x04)
                    }
                }

                Return (0x03)
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (^^_PR0 ())
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (^^_PR0 ())
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Device (MINI)
            {
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (CondRefOf (PAHC))
                    {
                        If (PAHC ())
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Name (_ADR, 0xFFFF)  // _ADR: Address
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (^^^_PR0 ())
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (^^^_PR0 ())
                }
            }
        }
    }

    Scope (\)
    {
        Name (PWOK, 0x0810000F)
    }

    Scope (\_SB.PC00.PEG1)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = P1RE /* External reference */
        RSTG [One] = P1RP /* External reference */
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        PWRG [Zero] = P1PE /* External reference */
        PWRG [One] = P1PP /* External reference */
        Name (WAKG, Zero)
        WAKG = P1WP /* External reference */
        P1WK = P1WP /* External reference */
        Name (WAKP, Zero)
        Name (SCLK, Zero)
        Name (TMCS, 0x0BB8)
        Name (PSPL, 0x0CE4)
        If ((((HGMD == 0x02) || (HGMD == 0x03)) && ((VEND == 
            0x10DE) || (VEND == 0x1002))))
        {
            RSTG [Zero] = P1RE /* External reference */
            RSTG [One] = P1RP /* External reference */
            PWRG [Zero] = P1PE /* External reference */
            PWRG [One] = P1PP /* External reference */
            WAKG = P1WP /* External reference */
            SCLK = Zero
            Method (BCPR, 1, Serialized)
            {
                \PCPA (0x03, Arg0)
            }

            Name (CURP, Zero)
            Method (PALC, 1, Serialized)
            {
                If ((Arg0 > PSPL))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 > CURP))
                {
                    Local0 = (Arg0 - CURP) /* \_SB_.PC00.PEG1.CURP */
                    If (RAPC (One, Local0))
                    {
                        CURP = Arg0
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Local0 = (CURP - Arg0)
                    RAPC (Zero, Local0)
                    Return (One)
                }
            }

            Method (PINI, 0, Serialized)
            {
                If (PALC (0x04D6))
                {
                    BCPR (Zero)
                }
                Else
                {
                    BCPR (One)
                }
            }

            Method (PPBA, 1, Serialized)
            {
                If ((Arg0 == 0x80000000))
                {
                    BCPR (One)
                    Return (0x02)
                }
                ElseIf (PALC (Arg0))
                {
                    BCPR (Zero)
                    Return (One)
                }
                Else
                {
                    BCPR (One)
                    Return (Zero)
                }
            }
        }
        Else
        {
        }

        Name (WKEN, Zero)
        Name (WOFF, Zero)
        Name (LNRD, Zero)
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (CondRefOf (RD3C))
            {
                If ((RD3C == 0x02))
                {
                    Return (0x04)
                }
            }

            Return (Zero)
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = One
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
            }
        }

        Method (PPS0, 0, Serialized)
        {
        }

        Method (PPS3, 0, Serialized)
        {
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((GPRS () == Zero))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((CUMA == One))
                {
                    Return (Zero)
                }

                If ((PSTA () == One))
                {
                    Return (Zero)
                }

                If (((\_SB.PC00.LPCB.IVGA == One) && (\_SB.PC00.LPCB.CUMB != Zero)))
                {
                    Return (Zero)
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                ElseIf ((((HGMD == 0x02) || (HGMD == 0x03)) && ((
                    VEND == 0x10DE) || (VEND == 0x1002))))
                {
                    If ((NCHK (VEND, DEID) != Zero))
                    {
                        If ((\_SB.PC00.PEG1.PXP._STA () != Zero))
                        {
                            Return (Zero)
                        }

                        If ((\_SB.PC00.PEG1.TDGC == One))
                        {
                            If ((\_SB.PC00.PEG1.DGCX == 0x03))
                            {
                                \_SB.PC00.PEG1.PEGP.GC6O ()
                            }
                            ElseIf ((\_SB.PC00.PEG1.DGCX == 0x04))
                            {
                                \_SB.PC00.PEG1.PEGP.GC6O ()
                            }

                            \_SB.PC00.PEG1.TDGC = Zero
                            \_SB.PC00.PEG1.DGCX = Zero
                        }
                        Else
                        {
                            PON ()
                            Sleep (0x01F4)
                            L23D ()
                            Local0 = Zero
                            While ((\_SB.PC00.PEG1.CULS < 0x04))
                            {
                                If ((Local0 > 0x40))
                                {
                                    Break
                                }

                                Sleep (0x10)
                                Local0++
                            }

                            CMDR |= 0x07
                            D0ST = Zero
                            While ((\_SB.PC00.PEG1.PEGP.VEID != 0x10DE))
                            {
                                Sleep (One)
                            }

                            \_SB.PC00.PEG1.LREN = \_SB.PC00.PEG1.PEGP.LTRE /* External reference */
                            \_SB.PC00.PEG1.CEDR = One
                            \_SB.PC00.PEG1.PEGP.NVID = HYSS /* External reference */
                            \_SB.PC00.PEG1.LREN = \_SB.PC00.PEG1.PEGP.LTRE /* External reference */
                            \_SB.PC00.PEG1.CEDR = One
                        }
                    }
                    ElseIf ((VEND == 0x1002))
                    {
                        PON ()
                        L23D ()
                        Local0 = Zero
                        While ((\_SB.PC00.PEG1.CULS < 0x04))
                        {
                            If ((Local0 > 0x40))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Local0++
                        }

                        CMDR |= 0x07
                        D0ST = Zero
                        \_SB.PC00.PEG1.LREN = \_SB.PC00.PEG1.PEGP.LTRE /* External reference */
                        \_SB.PC00.PEG1.CEDR = One
                        \_SB.PC00.PEG1.PEGP.ATID = HYSS /* External reference */
                    }
                    Else
                    {
                        PON ()
                        L23D ()
                        Local0 = Zero
                        While ((\_SB.PC00.PEG1.CULS < 0x04))
                        {
                            If ((Local0 > 0x40))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Local0++
                        }

                        \_SB.PC00.PEG1.LREN = \_SB.PC00.PEG1.PEGP.LTRE /* External reference */
                        \_SB.PC00.PEG1.CEDR = One
                    }
                }
                Else
                {
                    PON ()
                    L23D ()
                    Local0 = Zero
                    While ((\_SB.PC00.PEG1.CULS < 0x04))
                    {
                        If ((Local0 > 0x40))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((PSTA () == Zero))
                {
                    Return (Zero)
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                ElseIf ((((HGMD == 0x02) || (HGMD == 0x03)) && ((
                    VEND == 0x10DE) || (VEND == 0x1002))))
                {
                    If ((NCHK (VEND, DEID) != Zero))
                    {
                        If ((\_SB.PC00.PEG1.PXP._STA () != One))
                        {
                            Return (Zero)
                        }

                        If ((\_SB.PC00.PEG1.TDGC == One))
                        {
                            CreateField (\_SB.PC00.PEG1.TGPC, Zero, 0x03, GPPC)
                            If ((ToInteger (GPPC) == One))
                            {
                                \_SB.PC00.PEG1.PEGP.GC6I ()
                            }
                            ElseIf ((ToInteger (GPPC) == 0x02))
                            {
                                \_SB.PC00.PEG1.PEGP.GC6I ()
                            }
                        }
                        Else
                        {
                            \_SB.PC00.PEG1.PEGP.LTRE = \_SB.PC00.PEG1.LREN /* External reference */
                            DL23 ()
                            POFF ()
                        }
                    }
                    Else
                    {
                        \_SB.PC00.PEG1.PEGP.LTRE = \_SB.PC00.PEG1.LREN /* External reference */
                        DL23 ()
                        POFF ()
                    }
                }
                Else
                {
                    DL23 ()
                    POFF ()
                }
            }
        }

        Method (GPPR, 0, NotSerialized)
        {
            If (CondRefOf (WAKP))
            {
                If (((WAKP != Zero) && (WKEN == Zero)))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PCPB))
            {
                If ((PCPB != Zero))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (DVES))
            {
                If ((DVES () == Zero))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (GPRS, 0, NotSerialized)
        {
            If ((CondRefOf (PRTP) && (PRTP == 0x04)))
            {
                If (CondRefOf (\HBCL))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBCL == SLOT))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                If (CondRefOf (HBSL))
                {
                    Local0 = ((SLOT - One) / 0x04)
                    If ((HBSL & (One << Local0)))
                    {
                        Return (Zero)
                    }
                }

                If ((CondRefOf (\HBCL) && CondRefOf (\HBPL)))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBPL == (SLOT - One)))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If (CondRefOf (RD3C))
            {
                If ((RD3C != 0x02))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PRMV))
            {
                If ((PRMV == One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            If (CondRefOf (CEMP))
            {
                CEMP (One)
            }

            If (CondRefOf (WAKG))
            {
                \_SB.SHPO (WAKG, One)
                \_SB.CAGS (WAKG)
            }

            If (CondRefOf (DHDW))
            {
                DHDW ()
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD0 (SLOT)
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Local0 = ((Timer - WOFF) / 0x2710)
                        If ((Local0 < 0xC8))
                        {
                            Sleep ((0xC8 - Local0))
                        }

                        WOFF = Zero
                    }
                }

                \PIN.ON (PWRG)
                If ((((HGMD == 0x02) || (HGMD == 0x03)) && ((VEND == 
                    0x10DE) || (VEND == 0x1002))))
                {
                    Sleep (DLPW)
                }
                Else
                {
                    Sleep (PEP0)
                }
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, One, TMCS)
                }
                Else
                {
                    SPCO (SCLK, One)
                }
            }

            Sleep (0x02)
            \PIN.OFF (RSTG)
            Sleep (DLHR)
        }

        Method (POFF, 0, NotSerialized)
        {
            Local1 = (LNRD / 0x03E8)
            Sleep (Local1)
            \PIN.ON (RSTG)
            Sleep (DLHR)
            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD3 (SLOT)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, Zero, TMCS)
                }
                Else
                {
                    SPCO (SCLK, Zero)
                }
            }

            If (CondRefOf (PWRG))
            {
                If ((GPPR () == One))
                {
                    \PIN.OFF (PWRG)
                }

                If (CondRefOf (WOFF))
                {
                    WOFF = Timer
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            If (CondRefOf (EHDW))
            {
                EHDW ()
            }

            If (CondRefOf (CEMP))
            {
                CEMP (Zero)
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PC00.PEG1.LNRD */
        }

        Method (NCHK, 2, NotSerialized)
        {
            If ((Arg0 != 0x10DE))
            {
                Return (Zero)
            }

            Local0 = ((Arg1 & 0xFFFF) >> 0x08)
            If (((Local0 == 0x24) || (Local0 == 0x25)))
            {
                Return (0x03)
            }
            ElseIf ((Local0 <= 0x1D))
            {
                Return (One)
            }
            Else
            {
                Return (0x02)
            }
        }
    }

    Scope (\_SB.PC00.SAT0)
    {
        Scope (PRT4)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (SPON, 0, NotSerialized)
            {
                \STMC (0x04, One)
            }

            Method (SPOF, 0, NotSerialized)
            {
                \STMC (0x04, Zero)
            }

            If (PRES ())
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        SPR4
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        SPR4
                    })
                }
            }
        }

        Scope (PRT5)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (SPON, 0, NotSerialized)
            {
                \STMC (0x05, One)
            }

            Method (SPOF, 0, NotSerialized)
            {
                \STMC (0x05, Zero)
            }

            If (PRES ())
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        SPR5
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        SPR5
                    })
                }
            }
        }

        Scope (PRT6)
        {
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (SPON, 0, NotSerialized)
            {
                \STMC (0x06, One)
            }

            Method (SPOF, 0, NotSerialized)
            {
                \STMC (0x06, Zero)
            }

            If (PRES ())
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        SPR6
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        SPR6
                    })
                }
            }
        }
    }

    If ((CondRefOf (VMDE) && CondRefOf (\_SB.PC00.VMD0)))
    {
        Scope (\_SB.PC00)
        {
            If ((VMDE == One))
            {
                Scope (VMD0)
                {
                    If ((PCHS == PCHX)){}
                    If ((CondRefOf (VMR1) && CondRefOf (HBSL)))
                    {
                        If (((VMR1 & One) && !(HBSL & One)))
                        {
                            Scope (RP01)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x02) && !(HBSL & One)))
                        {
                            Scope (RP02)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x04) && !(HBSL & One)))
                        {
                            Scope (RP03)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x08) && !(HBSL & One)))
                        {
                            Scope (RP04)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x10) && !(HBSL & 0x02)))
                        {
                            Scope (RP05)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x20) && !(HBSL & 0x02)))
                        {
                            Scope (RP06)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x40) && !(HBSL & 0x02)))
                        {
                            Scope (RP07)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x80) && !(HBSL & 0x02)))
                        {
                            Scope (RP08)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (VMR2) && CondRefOf (HBSL)))
                    {
                        If (((VMR2 & One) && !(HBSL & 0x04)))
                        {
                            Scope (RP09)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x02) && !(HBSL & 0x04)))
                        {
                            Scope (RP10)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x04) && !(HBSL & 0x04)))
                        {
                            Scope (RP11)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x08) && !(HBSL & 0x04)))
                        {
                            Scope (RP12)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x10) && !(HBSL & 0x08)))
                        {
                            Scope (RP13)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x20) && !(HBSL & 0x08)))
                        {
                            Scope (RP14)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x40) && !(HBSL & 0x08)))
                        {
                            Scope (RP15)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x80) && !(HBSL & 0x08)))
                        {
                            Scope (RP16)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (VMR3) && CondRefOf (HBSL)))
                    {
                        If (((VMR3 & One) && !(HBSL & 0x10)))
                        {
                            Scope (RP17)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x02) && !(HBSL & 0x10)))
                        {
                            Scope (RP18)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x04) && !(HBSL & 0x10)))
                        {
                            Scope (RP19)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x08) && !(HBSL & 0x10)))
                        {
                            Scope (RP20)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x10) && !(HBSL & 0x20)))
                        {
                            Scope (RP21)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x20) && !(HBSL & 0x20)))
                        {
                            Scope (RP22)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x40) && !(HBSL & 0x20)))
                        {
                            Scope (RP23)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x80) && !(HBSL & 0x20)))
                        {
                            Scope (RP24)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If ((PCHS == PCHX))
                    {
                        If ((CondRefOf (VMR4) && CondRefOf (HBSL)))
                        {
                            If (((VMR4 & One) && !(HBSL & 0x40)))
                            {
                                Scope (RP25)
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VR3D ())
                                                    {
                                                        VPON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VR3D ())
                                                    {
                                                        VPOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If (((VMR4 & 0x02) && !(HBSL & 0x40)))
                            {
                                Scope (RP26)
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VR3D ())
                                                    {
                                                        VPON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VR3D ())
                                                    {
                                                        VPOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If (((VMR4 & 0x04) && !(HBSL & 0x40)))
                            {
                                Scope (RP27)
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VR3D ())
                                                    {
                                                        VPON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VR3D ())
                                                    {
                                                        VPOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If (((VMR4 & 0x08) && !(HBSL & 0x40)))
                            {
                                Scope (RP28)
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VR3D ())
                                                    {
                                                        VPON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VR3D ())
                                                    {
                                                        VPOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMCP))
                    {
                        If ((VMCP & One))
                        {
                            Scope (PEG1)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMCP & 0x02) || (VMCP & 0x10)))
                        {
                            Scope (PEG2)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMCP & 0x04))
                        {
                            Scope (PEG3)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMCP & 0x08))
                        {
                            Scope (PEG0)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS0))
                    {
                        If ((VMS0 & One))
                        {
                            Scope (PRT0)
                            {
                                If (((ZPPB & One) == Zero))
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMS0 & 0x02))
                        {
                            Scope (PRT1)
                            {
                                If (((ZPPB & 0x02) == Zero))
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMS0 & 0x04))
                        {
                            Scope (PRT2)
                            {
                                If (((ZPPB & 0x04) == Zero))
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMS0 & 0x08))
                        {
                            Scope (PRT3)
                            {
                                If (((ZPPB & 0x08) == Zero))
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMS0 & 0x10))
                        {
                            Scope (PRT4)
                            {
                                If (((ZPPB & 0x10) == Zero))
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMS0 & 0x20))
                        {
                            Scope (PRT5)
                            {
                                If (((ZPPB & 0x20) == Zero))
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMS0 & 0x40))
                        {
                            Scope (PRT6)
                            {
                                If (((ZPPB & 0x40) == Zero))
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMS0 & 0x80))
                        {
                            Scope (PRT7)
                            {
                                If (((ZPPB & 0x80) == Zero))
                                {
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        If (CondRefOf (\STD3))
                                        {
                                            If ((\STD3 == 0x02))
                                            {
                                                Return (0x04)
                                            }

                                            Return (0x03)
                                        }

                                        Return (0x03)
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }

                                            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                            {
                                                Return (Package (0x01)
                                                {
                                                    NVPR
                                                })
                                            }
                                        }
                                    }

                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            PowerResource (NVPR, 0x04, 0x0000)
                                            {
                                                Name (_STA, One)  // _STA: Status
                                                Method (_ON, 0, Serialized)  // _ON_: Power On
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSON ()
                                                        _STA = One
                                                    }
                                                }

                                                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                                {
                                                    If (!VS3D ())
                                                    {
                                                        VSOF ()
                                                        _STA = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    If ((SDS9 == 0x02))
    {
        Scope (\_SB.PC00.UA00.BTH0)
        {
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                \_SB.BTRK (One)
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                \_SB.BTRK (Zero)
            }
        }
    }

    If ((XDCE == One))
    {
        Scope (\_SB)
        {
            PowerResource (USBC, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Scope (\_SB.PC00.XDCI)
        {
            OperationRegion (GENR, SystemMemory, ((XDCB & 0xFFFFFFFFFFFFFF00) + 0x0010F81C), 0x04)
            Field (GENR, WordAcc, NoLock, Preserve)
            {
                    ,   2, 
                CPME,   1, 
                U3EN,   1, 
                U2EN,   1
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                CPME = One
                U2EN = One
                U3EN = One
                \_SB.CSD3 (0x17)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                CPME = Zero
                U2EN = Zero
                U3EN = Zero
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                \_SB.CSD0 (0x17)
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }
        }
    }

    If ((GBES != Zero))
    {
        Scope (\_SB.PC00.GLAN)
        {
            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                \_SB.CSD3 (0x15)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!GBED)
                {
                    \_SB.CSD0 (0x15)
                }
            }
        }
    }

    Scope (\_SB.PC00.I2C0)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA (Zero))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON (Zero)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF (Zero)
            }
        }

        PowerResource (PTPL, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA (One))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON (One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF (One)
            }
        }

        Name (ONTM, Zero)
        Method (PSTA, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (One)
            }

            If ((Arg0 == One))
            {
                If ((\_SB.GGOV (TPP1) == One))
                {
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Return (Zero)
        }

        Method (PON, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                \_SB.SGRA (GPDI, PPDI)
            }
            ElseIf ((Arg0 == One))
            {
                \_SB.SGOV (TPR1, PPR1)
                \_SB.SGOV (TPP1, PPP1)
                ONTM = Timer
                \_SB.SGRA (GPI1, PPI1)
            }
        }

        Method (POFF, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Local0 = (PPDI ^ One)
                \_SB.SGRA (GPDI, Local0)
            }
            ElseIf ((Arg0 == One))
            {
                Local0 = (PPI1 ^ One)
                \_SB.SGRA (GPI1, Local0)
                Local0 = (PPP1 ^ One)
                \_SB.SGOV (TPP1, Local0)
                Local0 = (PPR1 ^ One)
                \_SB.SGOV (TPR1, Local0)
                ONTM = Zero
            }
        }

        If ((TPDT != Zero))
        {
            Scope (TPD0)
            {
                Name (TD_P, Package (0x01)
                {
                    \_SB.PC00.I2C0.PXTC
                })
                Alias (IC0D, TD_D)
                Alias (\_SB.PC00.I2C0.ONTM, TD_C)
                Method (PS0X, 0, Serialized)
                {
                    If ((TD_C == Zero))
                    {
                        Return (Zero)
                    }

                    Local0 = ((Timer - TD_C) / 0x2710)
                    Local1 = (TD_D + VRRD) /* External reference */
                    If ((Local0 < Local1))
                    {
                        Sleep ((Local1 - Local0))
                    }
                }

                Method (PS3X, 0, Serialized)
                {
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If ((_STA () == 0x0F))
                    {
                        Return (TD_P) /* \_SB_.PC00.I2C0.TPD0.TD_P */
                    }
                    Else
                    {
                        Return (Package (0x00){})
                    }
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If ((_STA () == 0x0F))
                    {
                        Return (TD_P) /* \_SB_.PC00.I2C0.TPD0.TD_P */
                    }
                    Else
                    {
                        Return (Package (0x00){})
                    }
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    PS0X ()
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    PS3X ()
                }
            }
        }

        If ((TPLT != Zero))
        {
            If ((TPLS == One))
            {
                Scope (TPL1)
                {
                    Name (TD_P, Package (0x01)
                    {
                        \_SB.PC00.I2C0.PTPL
                    })
                    Alias (IC1D, TD_D)
                    Alias (\_SB.PC00.I2C0.ONTM, TD_C)
                    Method (PS0X, 0, Serialized)
                    {
                        If ((TD_C == Zero))
                        {
                            Return (Zero)
                        }

                        Local0 = ((Timer - TD_C) / 0x2710)
                        Local1 = (TD_D + VRRD) /* External reference */
                        If ((Local0 < Local1))
                        {
                            Sleep ((Local1 - Local0))
                        }
                    }

                    Method (PS3X, 0, Serialized)
                    {
                    }

                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If ((_STA () == 0x0F))
                        {
                            Return (TD_P) /* \_SB_.PC00.I2C0.TPL1.TD_P */
                        }
                        Else
                        {
                            Return (Package (0x00){})
                        }
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If ((_STA () == 0x0F))
                        {
                            Return (TD_P) /* \_SB_.PC00.I2C0.TPL1.TD_P */
                        }
                        Else
                        {
                            Return (Package (0x00){})
                        }
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        PS0X ()
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        PS3X ()
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.I2C1)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF ()
            }
        }

        Name (ONTM, Zero)
        Method (PSTA, 0, NotSerialized)
        {
            If ((\_SB.GGOV (GPLP) == One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.SGOV (GPLP, PPLP)
            Sleep (0x02)
            \_SB.SGOV (GPLR, PPLR)
            ONTM = Timer
            \_SB.SGRA (GPLI, PPLI)
        }

        Method (POFF, 0, NotSerialized)
        {
            Local0 = (PPLI ^ One)
            \_SB.SGRA (GPLI, Local0)
            Local0 = (PPLR ^ One)
            \_SB.SGOV (GPLR, Local0)
            Sleep (0x03)
            Local0 = (PPLP ^ One)
            \_SB.SGOV (GPLP, Local0)
            ONTM = Zero
        }

        Scope (TPL1)
        {
            Name (TD_P, Package (0x01)
            {
                \_SB.PC00.I2C1.PXTC
            })
            Alias (IC1D, TD_D)
            Alias (\_SB.PC00.I2C1.ONTM, TD_C)
            Method (PS0X, 0, Serialized)
            {
                If ((TD_C == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - TD_C) / 0x2710)
                Local1 = (TD_D + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Method (PS3X, 0, Serialized)
            {
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C1.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C1.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PS0X ()
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PS3X ()
            }
        }
    }

    Scope (\_SB.PC00.I2C3)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF ()
            }
        }

        Name (ONTM, Zero)
        Method (PSTA, 0, NotSerialized)
        {
            If ((\_SB.GGOV (TPP1) == One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.SGOV (TPP1, One)
            Sleep (0x02)
            \_SB.SGOV (TPR1, Zero)
            ONTM = Timer
            \_SB.SGRA (GPI1, One)
        }

        Method (POFF, 0, NotSerialized)
        {
            \_SB.SGRA (GPI1, Zero)
            \_SB.SGOV (TPR1, One)
            Sleep (0x03)
            \_SB.SGOV (TPP1, Zero)
            ONTM = Zero
        }

        Scope (TPL1)
        {
            Name (TD_P, Package (0x01)
            {
                \_SB.PC00.I2C3.PXTC
            })
            Alias (IC1D, TD_D)
            Alias (\_SB.PC00.I2C3.ONTM, TD_C)
            Method (PS0X, 0, Serialized)
            {
                If ((TD_C == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - TD_C) / 0x2710)
                Local1 = (TD_D + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Method (PS3X, 0, Serialized)
            {
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C3.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C3.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PS0X ()
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PS3X ()
            }
        }
    }

    Scope (\_SB.PC00)
    {
        PowerResource (PAUD, 0x00, 0x0000)
        {
            Name (PSTA, One)
            Name (ONTM, Zero)
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                _STA = One
                PUAM ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                _STA = Zero
                PUAM ()
            }

            Method (PUAM, 0, Serialized)
            {
                If (((^_STA == Zero) && (\UAMS != Zero))){}
                ElseIf ((^PSTA != One))
                {
                    ^PSTA = One
                    ^ONTM = Timer
                }
            }
        }
    }

    If ((\_SB.PC00.HDAS.VDID != 0xFFFFFFFF))
    {
        Scope (\_SB.PC00.HDAS)
        {
            Method (PS0X, 0, Serialized)
            {
                If ((\_SB.PC00.PAUD.ONTM == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - \_SB.PC00.PAUD.ONTM) / 0x2710)
                Local1 = (AUDD + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                \_SB.PC00.PAUD
            })
        }
    }

    Scope (\_GPE)
    {
        Method (AL6F, 0, NotSerialized)
        {
            If (\_SB.ISME (FVWP))
            {
                \_SB.SHPO (FVWP, One)
                Notify (\_SB.PC00.RP07, 0x02) // Device Wake
                \_SB.CAGS (FVWP)
            }

            If (\_SB.ISME (PSWP))
            {
                \_SB.SHPO (PSWP, One)
                Notify (\_SB.PC00.RP13, 0x02) // Device Wake
                \_SB.CAGS (PSWP)
            }

            If (\_SB.ISME (WLWK))
            {
                \_SB.SHPO (WLWK, One)
                Notify (\_SB.PC00.RP08, 0x02) // Device Wake
                \_SB.CAGS (WLWK)
            }

            If (\_SB.ISME (WWKP))
            {
                \_SB.SHPO (WWKP, One)
                Notify (\_SB.PC00.RP02, 0x02) // Device Wake
                \_SB.CAGS (WWKP)
            }

            If (\_SB.ISME (PSW2))
            {
                \_SB.SHPO (PSW2, One)
                Notify (\_SB.PC00.RP25, 0x02) // Device Wake
                \_SB.CAGS (PSW2)
            }

            If (\_SB.ISME (PSW3))
            {
                \_SB.SHPO (PSW3, One)
                Notify (\_SB.PC00.RP09, 0x02) // Device Wake
                \_SB.CAGS (PSW3)
            }
        }
    }
}

