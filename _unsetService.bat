@echo off
if \"%~1\"==\"\" exit
set input=%~n1
net stop %input%
"%~dp0\instsrv" %input% remove
del "%~dp0\%~nx1" /Q
del "%~dp0\instsrv.exe" /Q
del "%~dp0\_unsetService.bat" /Q
reg delete HKLM\SYSTEM\CurrentControlSet\services\%input% /f
pause