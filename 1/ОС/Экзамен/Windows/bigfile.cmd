@echo off
setlocal
set /a bigsize=0
echo list volume> tmp.txt
:next
for /f "skip=7 tokens=3" %%i in ('diskpart /s tmp.txt') do (
if not "%%i"=="NTFS" (
dir /a-d /s /o-s /b %%i:\ 1>file 2>nul
for /f %%a in (file) do (
if %%~za gtr %bigsize% (
set bigName=%%a;
set /a bigsize=%%~za
)
goto next
)
)
)
echo %bigName%
del tmp.txt
endlocal