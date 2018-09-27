@echo off
REM
REM Windows‚ÌŠÂ‹«İ’è
REM

setlocal
set NODOKA=C:\Program Files\nodoka

call :proc personal.nodoka
call :proc hidemaru.nodoka
exit /b 0


:proc
echo %1
del /F "%NODOKA%\%1"
mklink /H "%NODOKA%\%1" "%~dp0%1"
exit /b 0