@echo off
title Disk Check
color 0c
mode con cols=80 lines=25

echo ========================================
echo    Disk Diagnostic Tool
echo ========================================
echo.
echo Checking disk C:\ ...
ping 127.0.0.1 -n 2 >nul
echo WARNING: Too many funny files detected.
ping 127.0.0.1 -n 2 >nul
echo Starting cleanup...
ping 127.0.0.1 -n 2 >nul
echo Deleting prank_cache_001.tmp
ping 127.0.0.1 -n 1 >nul
echo Deleting prank_cache_002.tmp
ping 127.0.0.1 -n 1 >nul
echo Deleting prank_cache_003.tmp
ping 127.0.0.1 -n 1 >nul
echo.
echo Cleanup complete.
echo Relax, nothing was really deleted.
echo.
pause
