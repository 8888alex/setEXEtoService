@echo off
if \"%~1\"==\"\" exit
set input=%~n1
net stop %input%
"%~dp0\instsrv" %input% remove
reg delete HKLM\SYSTEM\CurrentControlSet\services\%input% /f
del "%~dp0\%~nx1" /Q
del "%~dp0\instsrv.exe" /Q
del "%~dp0\%input%_unsetService.bat" /Q
pause