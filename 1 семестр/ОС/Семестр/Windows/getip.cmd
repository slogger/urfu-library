@echo off
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| find "IPv4"') do echo %%i