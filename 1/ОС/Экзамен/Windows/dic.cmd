@echo off
setlocal enabledelayedexpansion
del file 2>nul
for /f "tokens=*" %%a in (%1) do (
for %%b in (%%a) do echo %%b >> file
)
sort file > file2
set c=0
set p=
for /f %%a in (file2) do (
if "%%a"=="!p!" (set /a c+=1) else (if defined p echo !p! !c! >> out.txt
set p=%%a
set c=1
))
echo !p! !c! >> out.txt
del file 2>nul
del file2 2>nul