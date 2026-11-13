@echo off
title Windows Update
color 1f
mode con cols=80 lines=25

echo ========================================
echo    Windows Update
echo    Do not turn off your computer
echo ========================================
echo.
echo Installing update 1/100...
ping 127.0.0.1 -n 3 >nul
echo Installing update 23/100...
ping 127.0.0.1 -n 3 >nul
echo Installing update 57/100...
ping 127.0.0.1 -n 3 >nul
echo Installing update 89/100...
ping 127.0.0.1 -n 3 >nul
echo Installing update 100/100...
ping 127.0.0.1 -n 3 >nul
echo.
echo Update complete.
echo Just kidding. This is a prank.
echo.
pause
