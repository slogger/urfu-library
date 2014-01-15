@echo off

for /f "tokens=1" %%i in ('help ^| findstr /b [A-Z]') do (

	IF EXIST %windir%\System32\%%i.exe (
		echo %%i >> int.txt
	) else ( echo %%i >> ext.txt)
)