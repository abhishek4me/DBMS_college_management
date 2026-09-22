@echo off
setlocal enabledelayedexpansion
title Cavatta College Management - Live Server
color 0A

cls
echo ============================================================
echo   CAVATTA COLLEGE MANAGEMENT SYSTEM - LAUNCHER
echo ============================================================
echo.

set "DEST_DIR=C:\xampp\htdocs\school-management-system"

:: Determine source directory safely
set "SOURCE_DIR="
if exist "%~dp0school-management-system\index.php" (
    set "SOURCE_DIR=%~dp0school-management-system"
) else if exist "%~dp0index.php" (
    set "SOURCE_DIR=%~dp0"
) else if exist "c:\Users\abhis\Desktop\Cavatta\school-management-system\index.php" (
    set "SOURCE_DIR=c:\Users\abhis\Desktop\Cavatta\school-management-system"
)

if defined SOURCE_DIR (
    echo [*] Synchronizing latest project files to XAMPP...
    robocopy "%SOURCE_DIR%" "%DEST_DIR%" /E /XD .git scratch /R:1 /W:1 /NJH /NJS /NDL /NC /NS >nul
    echo [OK] Project files synchronized.
) else (
    echo [*] Running from %DEST_DIR%
)

:: Check and start MySQL
echo [*] Checking MySQL service...
tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo [OK] MySQL is already running.
) else (
    echo [*] Starting MySQL server...
    start "Cavatta MySQL" /MIN "C:\xampp\mysql\bin\mysqld.exe" --defaults-file=C:\xampp\mysql\bin\my.ini --skip-grant-tables --standalone
    timeout /t 2 /nobreak >nul
    echo [OK] MySQL started successfully.
)

:: Check and start Apache
echo [*] Checking Apache service...
tasklist /FI "IMAGENAME eq httpd.exe" 2>NUL | find /I /N "httpd.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo [OK] Apache is already running.
) else (
    echo [*] Starting Apache server...
    start "Cavatta Apache" /MIN "C:\xampp\apache\bin\httpd.exe"
    timeout /t 2 /nobreak >nul
    echo [OK] Apache started successfully.
)

:: Open in default web browser
echo [*] Launching Cavatta College in your browser...
start http://localhost/school-management-system/

echo.
echo ============================================================
echo   CAVATTA COLLEGE MANAGEMENT SYSTEM IS RUNNING LIVE!
echo ============================================================
echo.
echo   [+] Website URL:  http://localhost/school-management-system/
echo.
echo   [+] Login Credentials:
echo   ----------------------------------------------------------
echo   Panel       Username              Password
echo   ----------------------------------------------------------
echo   Admin       admin                 123
echo   Teacher 1   teacher1 (or teacher) 123
echo   Teacher 2   teacher2              123
echo   Teacher 3   teacher3              123
echo   Teacher 4   teacher4              123
echo   Student     abhishek r s          123
echo   Owner       owner                 123
echo   ----------------------------------------------------------
echo.
echo   [i] Apache and MySQL are running in the background.
echo   [i] You can keep this window open while using the website.
echo   ----------------------------------------------------------
echo   Type 'STOP' and press Enter to stop all servers.
echo   Or press Enter to exit this window and keep servers running.
echo ============================================================
echo.

set /p USER_CHOICE="Your option [Enter to keep running / STOP to shutdown]: "
if /I "%USER_CHOICE%"=="STOP" goto SHUTDOWN
if /I "%USER_CHOICE%"=="S" goto SHUTDOWN
if /I "%USER_CHOICE%"=="X" goto SHUTDOWN
goto FINISH

:SHUTDOWN
echo.
echo [*] Stopping Apache and MySQL servers...
taskkill /F /IM httpd.exe >nul 2>&1
taskkill /F /IM mysqld.exe >nul 2>&1
echo [OK] All servers stopped cleanly.
timeout /t 2 >nul

:FINISH
exit
