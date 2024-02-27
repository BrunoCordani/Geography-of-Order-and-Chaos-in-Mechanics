D:\Compile\lcc32\bin\lcc.exe -c nrutil.c
D:\Compile\lcc32\bin\lcc.exe -c fmft.c
D:\Compile\lcc32\bin\lcc.exe -c main_fmft.c
D:\Compile\lcc32\bin\lcclnk.exe -s -o lcc_main_fmft.exe main_fmft.obj fmft.obj nrutil.obj
del main_fmft.obj fmft.obj nrutil.obj -s
pause