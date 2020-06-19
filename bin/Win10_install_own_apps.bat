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
echo --- installing chocolatey (used to download and install applications)...
:: install Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

echo    ...Done!
echo.
echo --- starting the installation of your selected apps...

:: Install programs using chocolatey
::		You can add your own packages, visit https://www.chocolatey.org
choco install ^
 7zip ^
 advanced-renamer ^
 barrier ^
 choco-cleaner ^
 choco-package-list-backup ^
 cpu-z ^
 filebot ^
 filezilla ^
 gimp ^
 handbrake ^
 hashtab ^
 hugin ^
 hwinfo ^
 jdownloader ^
 keepassxc ^
 notepadplusplus ^
 nvidia-display-driver ^
 openvpn ^
 pdf24 ^
 putty ^
 python3 ^
 rclone ^
 shutup10 ^
 steam ^
 syncthing ^
 synctrayzor ^
 teamspeak ^
 teamviewer ^
 telegram ^
 traffic-monitor ^
 virtualbox ^
 vlc ^
 winmerge ^
 winscp ^
-y

echo.
echo --- Cleaning up
echo.
choco-cleaner

echo.
echo.
echo    ...Done!