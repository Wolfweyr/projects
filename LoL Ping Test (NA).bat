@echo off
CLS
:start
color 7
TITLE "LoL NA Ping Test" 
echo -
echo -
echo Pinging League of Legends NA Servers...
echo -
echo -
ping 104.160.131.3 -n 30
echo -
echo -
echo This ping was completed at: %time%
echo -
echo -
:Mid
echo Would you like to ping again? 
echo -
echo -
echo 1: Yes
echo 2: No, thanks.
echo ----------------------
set choice=
set /p choice=Enter your choice: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto A
if '%choice%'=='2' goto B
echo "%choice%" is not valid, try again
echo.
goto start
:A
echo Pinging League of Legends NA Servers...
ping 104.160.131.3 -n 10
goto mid
:B
echo Alright, no problem. Thanks for using my program.
goto end
:end
timeout 10