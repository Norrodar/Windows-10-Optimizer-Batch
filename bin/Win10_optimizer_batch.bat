@echo off

:: Windows 10 Optimizer Batch
::
::	Written by Norrodar
::
:: For more information and updates visit:
::		https://github.com/Norrodar/Windows-10-Optimizer-Batch
::
:: Licensed under GPLv3 

:: BatchGotAdmin (Run as Admin code starts)

REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
exit /B

:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"

:: BatchGotAdmin (Run as Admin code ends)
:: Your codes should start from the following line

echo.
echo          ======================================
echo          ----- Windows 10 Optimizer Batch -----
echo          --------------------------------------
echo          ----- By Norrodar www.Niranda.net -----
echo          ======================================
	
:START
	echo.
	echo.
	echo   Let us optimize your Windows 10 installation!
	echo   What do you like to do? Enter a number and hit enter!
	echo.
	echo   -- OWN SELECTED APPS --
	echo   1 = Install own selected apps
	echo   2 = Update own selected apps
	echo   3 = Uninstall own selected apps
	echo.
	echo   -- WINDOWS 10 TWEAKS --
	echo   4 = Remove fast-access folder and files
	echo   5 = Remove Win10 standard apps
	echo   6 = Enable Dark Mode
	echo.
	echo   -- OTHERS --
	echo   0 = Exit this programm
	echo.
	echo.

	set /p x=   You like to do number: 
	IF /I "%X%"=="1" goto :ONE
	IF /I "%X%"=="2" goto :TWO
	IF /I "%X%"=="3" goto :THREE
	IF /I "%X%"=="4" goto :FOUR
	IF /I "%X%"=="5" goto :FIVE
	IF /I "%X%"=="6" goto :SIX
	IF /I "%X%"=="0" goto :EXIT
	
	cls
	echo.
	echo   This wasn't a valid option! Please choose a number between 0 and 5 - read the options you DAU!!!!111one
	goto START
 
:ONE
	cls
	echo.
	echo.
	echo.
	echo   1 - Install own selected apps...
	call Win10_install_own_apps.bat
	goto START
	
:TWO
	cls
	echo.
	echo.
	echo.
	echo   2 - Update own selected apps...
	call Win10_update_own_apps.bat
	goto START
	
:THREE
	cls
	echo.
	echo.
	echo.
	echo   3 - Uninstall own selected apps...
	call Win10_uninstall_own_apps.bat
	goto START
	
:FOUR
	cls
	echo.
	echo.
	echo.
	echo   4 - Remove fast-access folder and files...
	call Win10_remove_fast_access_last_used.bat
	goto START
	
:FIVE
	cls
	echo.
	echo.
	echo.
	echo   5 - Remove Win10 standard apps...
	call Win10_remove_standard_apps.bat
	goto START
	
:SIX
	cls
	echo.
	echo.
	echo.
	echo.
	echo --- Edit registry to disable fast-access and last used apps and files...
	echo    1. The Registry Editor shows a warning of editing the registry. To go on hit 'yes'.
	echo    2. The Registry Editor will confirm the updates, just hit 'ok'.

	Win10_darkmode.reg

	echo    ...Done!
	goto START
	
	
:EXIT
	cls
	echo.
	echo.
	echo.
	echo   0 - Exit
	echo.
	echo    To complete all changes you should restart your Windows - just to be safe.
	echo    Safe anything BEFORE you hit 'yes'!
	echo.
	echo.
	set /p x=   Do you like to restart now? Type 'y' for yes or 'n' for no: 
	IF /I "%X%"=="y" 	goto :RESTART
	IF /I "%X%"=="yes" 	goto :RESTART
	IF /I "%X%"=="j" 	goto :RESTART
	IF /I "%X%"=="ja" 	goto :RESTART
	IF /I "%X%"=="n" 	goto :END
	IF /I "%X%"=="no" 	goto :END
	IF /I "%X%"=="nein" goto :END
	IF /I "%X%"=="nope" goto :END
	
:RESTART
	cls
	echo.
	echo.
	echo   RESTARTING WINDOWS IN 3 SECONDS!
	shutdown.exe /r /t 03
	echo.
	echo.
	
	goto END
 
:END
	echo.
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	echo   BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE BYE
	
	exit