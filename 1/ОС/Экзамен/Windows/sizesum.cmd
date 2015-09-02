@echo off
setlocal enabledelayedexpansion
set b=0
set summ=
for %%z in (b,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do (
if exist %%z:\ (
for /f "tokens=3" %%i in ('dir %%z:\ /a-d /s ^| findstr /b "[0-9]"') do (
for %%j in (%%i) do (
set dsize=!dsize!%%j
)
set a=!dsize!
set dsize=
for /l %%n in (1,1,14) do (
if not defined a (
if not defined b (
if !c! equ 1 (
set c=0
set summ=1!summ!
)
)
)
if defined a (
if defined b (
set /a summx=!c!+!a:~-1!+!b:~-1!
if !c! equ 1 set c=0
if !summx! geq 10 (
set c=1
set summx=!summx:~-1!
)
set a=!a:~,-1!
set b=!b:~,-1!
set summ=!summx!!summ!
) else (
set /a summx=!c!+!a:~-1!
if !c! equ 1 set c=0
if !summx! geq 10 (
set c=1
set summx=!summx:~-1!
)
set a=!a:~,-1!
set summ=!summx!!summ!
)
) else (
if defined b (
set /a summx=!c!+!b:~-1!
if !c! equ 1 set c=0
if !summx! geq 10 (
set c=1
set summx=!summx:~-1!
)
set b=!b:~,-1!
set summ=!summx!!summ!
)
)
)
set b=!summ!
set summ=
set summx=
)
)
)
echo !b!
endlocal