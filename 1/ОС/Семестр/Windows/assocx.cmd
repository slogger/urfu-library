@echo off
set temp=%1%
set arg=%temp:.=%
for /f "tokens=2 delims==" %%a in ('assoc .%arg%') do (
for /f "tokens=4 delims=\" %%i in ('reg query HKCR\%%a\shell\ /s /f Command /k ^| findstr /b [A-Z]') do (
	for /f "tokens=3,*" %%x in ('reg query HKCR\%%a\shell\%%i\Command /ve') do (
		echo %%i: %%y
	)
)
)
)
