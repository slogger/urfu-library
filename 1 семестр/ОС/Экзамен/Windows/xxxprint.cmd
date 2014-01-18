@echo off

for %%i in (CON, PRN, AUX, NUL) do echo %%i
for /l %%i in (1, 1, 9) do echo COM%%i
for /l %%i in (1, 1, 9) do echo LPT%%i