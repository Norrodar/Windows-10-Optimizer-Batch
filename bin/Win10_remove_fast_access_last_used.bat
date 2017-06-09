@echo off

:: Windows 10 Optimizer Batch
::
::	Written by Niranda
::	Simple to use, easy to get, visit niranda.net
::
:: For more information and updates visit:
::		https://github.com/Niranda/Windows-10-Optimizer-Batch
::
:: Licensed under GPLv3

echo.
echo --- Remove known information about last used apps and files...

:: Ansicht der Häufig verwendeten Ordner und Dateien zurücksetzen
del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*.automaticDestinations-ms

echo    ...Done!
echo.
echo --- Edit registry to disable fast-access and last used apps and files...
echo    1. The Registry Editor shows a warning of editing the registry. To go on hit 'yes'.
echo    2. The Registry Editor will confirm the updates, just hit 'ok'.4

Win10_remove_fast_access_last_used.reg

echo    ...Done!