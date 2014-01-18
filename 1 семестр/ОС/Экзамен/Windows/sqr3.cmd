@echo off
SETLOCAL EnableDelayedExpansion
set a=%1
if !a! leq 0 set a=!a:~1!
set summ=0
set k=
set cc=!a!
set b=!a!
set o=
set summx=0
for /l %%j in (1,1,20) do (
if defined cc (
set c=!cc:~-1!
for /l %%i in (1,1,20) do (
if defined a (
set /a mn=!a:~-1!*!c!
call :sum !summ! !mn!!k! summ
set k=!k!0
set a=!a:~,-1!
))
call :sum !summx! !summ!!o! summx
set o=!o!0
set cc=!cc:~,-1!
set a=!b!
set summ=0
set k=
))
echo !summx!
endlocal
goto :eof
:sum
set x1=%1
set x2=%2
set summxz=0
set summz=
for /l %%n in (1,1,50) do (
if not defined x1 (
if not defined x2 (
if !cz! equ 1 (
set cz=0
set summz=1!summz!
)))
if defined x1 (
if defined x2 (
set /a summxz=!cz!+!x1:~-1!+!x2:~-1!
if !cz! equ 1 set cz=0
if !summxz! geq 10 (
set cz=1
set summxz=!summxz:~-1!
)
set x1=!x1:~,-1!
set x2=!x2:~,-1!
set summz=!summxz!!summz!
) else (
set /a summxz=!cz!+!x1:~-1!
if !cz! equ 1 set cz=0
if !summxz! geq 10 (
set cz=1
set summxz=!summxz:~-1!
)
set x1=!x1:~,-1!
set summz=!summxz!!summz!
)
) else (
if defined x2 (
set /a summxz=!cz!+!x2:~-1!
if !cz! equ 1 set cz=0
if !summxz! geq 10 (
set cz=1
set summxz=!summxz:~-1!
)
set x2=!x2:~,-1!
set summz=!summxz!!summz!
)))
set %3=!summz!
exit /b