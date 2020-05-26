setlocal
set vcpath="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx64"
%vcpath%\x86\lib /DEF:SII_3nK_Transcode.def /MACHINE:X86 /OUT:Debug\win_x86\SII_3nK_Transcode.lib
%vcpath%\x86\lib /DEF:SII_3nK_Transcode.def /MACHINE:X86 /OUT:Release\win_x86\SII_3nK_Transcode.lib
%vcpath%\x64\lib /DEF:SII_3nK_Transcode.def /MACHINE:X64 /OUT:Debug\win_x64\SII_3nK_Transcode.lib
%vcpath%\x64\lib /DEF:SII_3nK_Transcode.def /MACHINE:X64 /OUT:Release\win_x64\SII_3nK_Transcode.lib