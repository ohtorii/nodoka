@echo off
REM
REM WindowsÇÃä¬ã´ê›íË
REM

setlocal
set NODOKA=C:\Program Files\nodoka

if not exist "%NODOKA%" (
	echo Not found nodoka.
	exit /b 1
)

call :copy apps.nodoka
call :copy hidemaru.nodoka
call :copy mouse.nodoka
call :copy personal.nodoka
call :copy vim.nodoka
call :copy vim_like.nodoka
call :copy window.nodoka

pause
exit /b 0


:copy
echo %1
copy /Y "%~dp0%1" "%NODOKA%"
REM del /F "%NODOKA%\%1"
REM mklink /H "%NODOKA%\%1" "%~dp0%1"
exit /b 0