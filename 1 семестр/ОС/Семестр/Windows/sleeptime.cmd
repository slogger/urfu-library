@echo off
for /F  "tokens= 1-4 delims=:." %%a in ("%time%") do ( set /A timeis = %%a * 60 * 60 + %%b *60 + %%c 2>NUL)
set /A endtime = %timeis% + %1
:WhatTimeIsIt?
rem It's coding time!
for /F  "tokens= 1-4 delims=:." %%a in ("%time%") do ( set /A timeis = %%a * 60 * 60 + %%b *60 + %%c 2>NUL)
if %timeis% EQU %endtime% (
	echo time is end
	goto :end
) else (
	goto :WhatTimeIsIt?
)
:end
