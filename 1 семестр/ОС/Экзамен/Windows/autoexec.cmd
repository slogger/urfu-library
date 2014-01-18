@echo off
Set pathBat=%cd%\%1

Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "%1" /t REG_SZ /d "%pathBat%" /f >NUL
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "%1" /t REG_SZ /d "%pathBat%" /f >NUL
Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "%1" /t REG_SZ /d "%pathBat%" /f >NUL
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "%1" /t REG_SZ /d "%pathBat%" /f >NUL