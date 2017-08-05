<html>
<body>
<pre>
<h1>Build Log</h1>
<h3>
--------------------Configuration: tinybrowser - Win32 (WCE ARMV4) Release--------------------
</h3>
<h3>Command Lines</h3>
Creating command line "rc.exe /l 0x409 /fo"ARMV4Rel/tinybrowser.res" /d UNDER_CE=400 /d _WIN32_WCE=400 /d "NDEBUG" /d "UNICODE" /d "_UNICODE" /d "WCE_PLATFORM_STANDARDSDK" /d "ARM" /d "_ARM_" /d "ARMV4" /r "C:\Users\Tsubasa\Documents\tinybrowser\tinybrowser\tinybrowser.rc"" 
Creating temporary file "C:\Users\Tsubasa\AppData\Local\Temp\RSP7F8E.tmp" with contents
[
/nologo /W3 /GX- /D _WIN32_WCE=400 /D "WCE_PLATFORM_STANDARDSDK" /D "ARM" /D "_ARM_" /D "ARMV4" /D UNDER_CE=400 /D "UNICODE" /D "_UNICODE" /D "NDEBUG" /Fp"ARMV4Rel/tinybrowser.pch" /Yu"stdafx.h" /Fo"ARMV4Rel/" /O2 /MC /c 
"C:\Users\Tsubasa\Documents\tinybrowser\tinybrowser\tinybrowser.cpp"
]
Creating command line "clarm.exe @C:\Users\Tsubasa\AppData\Local\Temp\RSP7F8E.tmp" 
Creating temporary file "C:\Users\Tsubasa\AppData\Local\Temp\RSP7F8F.tmp" with contents
[
/nologo /W3 /GX- /D _WIN32_WCE=400 /D "WCE_PLATFORM_STANDARDSDK" /D "ARM" /D "_ARM_" /D "ARMV4" /D UNDER_CE=400 /D "UNICODE" /D "_UNICODE" /D "NDEBUG" /Fp"ARMV4Rel/tinybrowser.pch" /Yc"stdafx.h" /Fo"ARMV4Rel/" /O2 /MC /c 
"C:\Users\Tsubasa\Documents\tinybrowser\tinybrowser\StdAfx.cpp"
]
Creating command line "clarm.exe @C:\Users\Tsubasa\AppData\Local\Temp\RSP7F8F.tmp" 
Creating temporary file "C:\Users\Tsubasa\AppData\Local\Temp\RSP7F90.tmp" with contents
[
commctrl.lib coredll.lib  /nologo /base:"0x00010000" /stack:0x10000,0x1000 /entry:"WinMainCRTStartup" /incremental:no /pdb:"ARMV4Rel/tinybrowser.pdb" /nodefaultlib:"libc.lib /nodefaultlib:libcd.lib /nodefaultlib:libcmt.lib /nodefaultlib:libcmtd.lib /nodefaultlib:msvcrt.lib /nodefaultlib:msvcrtd.lib" /out:"ARMV4Rel/tinybrowser.exe" /subsystem:windowsce,4.00 /align:"4096" /MACHINE:ARM  
.\ARMV4Rel\StdAfx.obj
.\ARMV4Rel\tinybrowser.res
.\ARMV4Rel\tinybrowser.obj
"..\..\..\..\..\Program Files (x86)\Windows CE Tools\wce400\STANDARDSDK\Lib\Armv4\ws2.lib"
]
Creating command line "link.exe @C:\Users\Tsubasa\AppData\Local\Temp\RSP7F90.tmp"
<h3>Output Window</h3>
Compiling resources...
Compiling...
StdAfx.cpp
Compiling...
tinybrowser.cpp
C:\Users\Tsubasa\Documents\tinybrowser\tinybrowser\tinybrowser.cpp(23) : warning C4101: 'message2' : unreferenced local variable
Linking...



<h3>Results</h3>
tinybrowser.exe - 0 error(s), 1 warning(s)
</pre>
</body>
</html>
