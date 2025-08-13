@echo off
setlocal enabledelayedexpansion

set "spinner=-\|/"
set count=0

echo Connecting to server...

:loop
set /a "count+=1"
set /a "pos=count %% 4"
set "char=!spinner:~%pos%,1!"
<nul set /p "=!char!"
ping -n 1 127.0.0.1 >nul
if %count% lss 20 goto loop

echo.
echo Done!
pause >nul
