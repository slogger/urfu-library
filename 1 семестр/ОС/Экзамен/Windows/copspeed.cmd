@echo off
for /f "tokens=1,2,3 delims=:" %%a in ("%time%") do set /a st=(%%a*60+%%b)*60+%%c 2> nul
copy %1 %2 > nul
for /f "tokens=1,2,3 delims=:" %%a in ("%time%") do set /a et=(%%a*60+%%b)*60+%%c 2> nul
set /a dt=%et%-%st% 2>NUL
echo %dt% sec
echo %~z1 kb
set /a s=%~z1/1048576/%dt% 2>NUL
echo %s% MB/s