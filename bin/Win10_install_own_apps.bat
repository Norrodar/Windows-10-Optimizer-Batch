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
echo --- installing chocolatey (used to download and install applications)...
:: Chocolatey installieren
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

echo    ...Done!
echo.
echo --- starting the installation of your selected apps...

:: Programme über Chocolatey installieren
::  REMEMBER: You also have to edit the "Win10_uninstall_own_apps.bat" file!
choco install office365proplus quicktime 7zip.install spotify winscp googlechrome teamspeak putty steam jdownloader telegram.install vlc battle.net winmerge notepadplusplus.install python jdk7 virtualbox paint.net dropbox teamviewer pdf24 wireshark openvpn logitechgaming geforce-experience filebot hashtab -y

echo.
echo.
echo    ...Done!