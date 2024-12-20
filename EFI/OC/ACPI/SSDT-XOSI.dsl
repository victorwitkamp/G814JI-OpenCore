DefinitionBlock ("", "SSDT", 2, "DRTNIA", "XOSI", 0x00001000)
{
    Method (XOSI, 1, NotSerialized)
    {
		If (_OSI ("Darwin"))
		{
			If (Arg0 == //"Windows 2009"  //  = win7, Win Server 2008 R2
						//"Windows 2012"  //  = Win8, Win Server 2012
						//"Windows 2013"  //  = win8.1
						"Windows 2015"  //  = Win10
						//"Windows 2016"  //  = Win10 version 1607
						//"Windows 2017"  //  = Win10 version 1703
						//"Windows 2017.2"//  = Win10 version 1709
						//"Windows 2018"  //  = Win10 version 1803
						//"Windows 2018.2"//  = Win10 version 1809
						//"Windows 2019"  //  = Win10 version 1903
				)
			{
				Return (Ones)
			}

			Else
			{
				Return (Zero)
			}
		}

		Else
		{
			Return (_OSI (Arg0))
		}
    }
}