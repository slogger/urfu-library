@echo off
title Witch
rem setlocal enabledelayedexpansion
if "%1"=="" (echo Don't argumets! & goto help)
rem if "%1"=="/i" goto input
for /f "tokens=1,* delims=." %%a in ("%1") do (
	if "%1"=="%%a" (set filename=%%a.exe) else (set filename=%%a.%%b)
	if "%1"=="%%a." (set filename=%%a.exe)
)
for /f %%i in ('cd') do (
if exist %filename% (echo %%i\%filename%
exit /b)
)
set c=1
:start
for /f "tokens=%c% delims=;" %%i in ("%PATH%") do (
	if exist %%i\%filename% (
	echo %%i\%filename%
	exit /b
	) else (
	set /a c=%c%+1
	goto start
	)
)
:end
exit /b