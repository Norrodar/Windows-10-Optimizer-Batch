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
echo --- starting the uninstallation of your selected apps...

:: Programme über Chocolatey installieren
::  REMEMBER: You also have to edit the "Win10_install_own_apps.bat" file!
choco uninstall office365proplus quicktime 7zip.install spotify winscp googlechrome teamspeak putty steam jdownloader telegram.install vlc battle.net winmerge notepadplusplus.install python jdk7 virtualbox paint.net dropbox teamviewer pdf24 wireshark openvpn logitechgaming geforce-experience filebot hashtab -y

echo.
echo    ...Done!