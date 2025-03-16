@echo off
echo %DATE% %TIME% - BAT File Running >> refresh_log.txt
powershell -ExecutionPolicy Bypass -NoProfile -File "%~dp0RefreshRateSwitcher.ps1"
echo %DATE% %TIME% - Script Executed >> refresh_log.txt
