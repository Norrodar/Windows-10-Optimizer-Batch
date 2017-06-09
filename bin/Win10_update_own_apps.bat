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
echo --- starting the update for installed apps...
:: Programme über Chocolatey installieren
choco upgrade all -y

echo.
echo    ...Done!