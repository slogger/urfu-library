@echo off
if exist out.txt (del out.txt)
for /f "tokens=4 delims= " %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /f Startup') do (echo %%i >> out.txt)
SetLocal EnableDelayedExpansion
for /f "usebackq delims=" %%a in ("out.txt") do set beforeLast=!Last!& Set Last=%%a
echo %BeforeLast%