@echo off

:: Windows 10 Optimizer Batch
::
::	Written by Norrodar
::
:: For more information and updates visit:
::		https://github.com/Norrodar/Windows-10-Optimizer-Batch
::
:: Licensed under GPLv3

echo.
echo --- starting the update for installed apps...
:: Update all programs which where installed by chocolatey
choco upgrade all -y

echo.
echo    ...Done!