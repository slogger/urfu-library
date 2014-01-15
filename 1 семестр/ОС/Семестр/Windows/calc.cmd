@echo off
setlocal enabledelayedexpansion

if "%1"=="" goto path

:shift
if not "%1"=="" (
rem echo %1
set x=%x%%1
shift
goto shift
)
goto calc

:help
echo operation:
echo +
echo -
echo *
echo /
goto path

:error
echo Error
goto exit

:path
echo Put expression:
set x = 0
set /p x=

:calc
if %x%==help goto help
set /a result=%x%


if not !ErrorLevel!==0 goto error
echo %x%=!result!
:exit