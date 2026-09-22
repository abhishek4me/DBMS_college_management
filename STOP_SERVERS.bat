@echo off
title Cavatta College Management - Stopping Servers...
color 0C

echo ============================================================
echo   STOPPING CAVATTA COLLEGE SERVERS
echo ============================================================
echo.
echo [*] Stopping Apache (httpd.exe)...
taskkill /F /IM httpd.exe >nul 2>&1
echo [OK] Apache stopped.

echo [*] Stopping MySQL (mysqld.exe)...
taskkill /F /IM mysqld.exe >nul 2>&1
echo [OK] MySQL stopped.
echo.
echo ============================================================
echo   All servers have been stopped.
echo ============================================================
timeout /t 3 >nul
exit
