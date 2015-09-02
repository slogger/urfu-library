@echo off
if "%1"=="" (
	goto err
)
set /a test=%1*10
if %test%==0 (
	if not %1==0 (
		goto err
	)
)
set /a math=%1
set /a sum=%math%*%math%
echo %sum%
goto exit

:err
echo Input number, please
return 1

:exit