@echo off
setlocal enabledelayedexpansion
title Installing SIR Controller 1000Hz Low-Latency Telemetry Hub - SIR Ecosystem
color 0A

echo =========================================================================
echo   SIR Controller 1000Hz Low-Latency Telemetry Hub
echo   SIR Official Production Desktop Application
echo =========================================================================
echo.
echo [1/3] Verifying environment & integrity...

if not exist "%CD%\SIR Controller.exe" (
    color 0C
    echo [ERROR] Application binary "SIR Controller.exe" was not found in this folder.
    echo Please make sure all files were extracted properly from the zip archive.
    echo.
    pause
    exit /b 1
)

echo [OK] Verified SIR Controller.exe.
echo [2/3] Starting standalone application: "SIR Controller.exe"...
start "" "%CD%\SIR Controller.exe"

echo [3/3] Installation initiated successfully.
echo.
echo Thank you for using SIR Controller 1000Hz Low-Latency Telemetry Hub.
echo.
timeout /t 3 >nul
exit /b 0
