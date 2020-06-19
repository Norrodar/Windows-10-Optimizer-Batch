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
echo --- starting the uninstallation of your selected apps...

:: Uninstall all programs that chocolatey installed
choco uninstall all -y

echo.
echo    ...Done!