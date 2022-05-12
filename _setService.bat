@echo off
if \"%~1\"==\"\" exit 
set input=%~n1Service
set /p input="Input Service Name[%input%]:"
set svcn="%~dp1%input%.exe"
xcopy "%~dp0_unsetService.bat" "%~dp1%input%_unsetService.bat" /q /y
xcopy "%~dp0instsrv.exe" "%~dp1" /q /y
xcopy "%~dp0srvany.exe" "%~dp1" /q /y
ren "%~dp1srvany.exe" %input%.exe
"%~dp0instsrv" %input% %svcn%
reg add HKLM\SYSTEM\CurrentControlSet\services\%input%\Parameters /v Application /d "%~1"
net start %input%
pause