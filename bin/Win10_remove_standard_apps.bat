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
echo --- starting to uninstall unwanted standard apps from Windows 10
:: Debloat Windows 10
::  uncomment the lines of programs which you want to uninstall

:: 3DBuilder
powershell "Get-AppxPackage *3d* | Remove-AppxPackage"
:: Alarm & Uhr
::powershell "Get-AppxPackage *windowsalarms* | Remove-AppxPackage"
:: Asphalt 8:Airborne
powershell "Get-AppxPackage *Asphalt8Airborne* | Remove-AppxPackage"
:: Candy Crush Saga
powershell "Get-AppxPackage *CandyCrushSaga* | Remove-AppxPackage"
:: Drawboard PDF
powershell "Get-AppxPackage *DrawboardPDF* | Remove-AppxPackage"
:: Erste Schritte
powershell "Get-AppxPackage *getstarted* | Remove-AppxPackage"
:: Facebook
powershell "Get-AppxPackage *Facebook* | Remove-AppxPackage"
:: Feedback Hub
::powershell "Get-AppxPackage *WindowsFeedbackHub* | Remove-AppxPackage"
:: Filme&TV
::powershell "Get-AppxPackage *zunevideo* | remove-appxpackage"
:: Finanzen
::powershell "Get-AppxPackage *Finance* | Remove-AppxPackage"
:: Fotos
::powershell "Get-AppxPackage *Photos* | Remove-AppxPackage"
:: Groove Music
powershell "Get-AppxPackage *zunemusic* | remove-appxpackage"
:: Karten (Maps)
::powershell "Get-AppxPackage *Maps* | Remove-AppxPackage"
:: Kalender und Mail
::powershell "Get-AppxPackage *communicationsapps* | remove-appxpackage"
:: Kamera
::powershell "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage"
:: Kontakte
::powershell "Get-AppxPackage *People* | Remove-AppxPackage"
:: Nachrichten
::powershell "Get-AppxPackage *News* | Remove-AppxPackage"
:: Nachrichten und Skype
::powershell "Get-AppxPackage *messaging* | remove-appxpackage"
:: Musik
::powershell "Get-AppxPackage *Music* | Remove-AppxPackage"
:: Office holen
powershell "Get-AppxPackage *officehub* | Remove-AppxPackage"
:: OneNote
powershell "Get-AppxPackage *OneNote* | Remove-AppxPackage"
:: Paint
::powershell "Get-AppxPackage *MSPaint* | Remove-AppxPackage"
:: Skype
powershell "Get-AppxPackage *Skype* | Remove-AppxPackage"
:: Sticky Notes
powershell "Get-AppxPackage *MicrosoftStickyNotes* | Remove-AppxPackage"
:: Rechner
::powershell "Get-AppxPackage *windowscalculator* | Remove-AppxPackage"
:: Solitaire
powershell "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
:: Sport
powershell "Get-AppxPackage *Sport* | Remove-AppxPackage"
:: Sprachrekorder
::powershell "Get-AppxPackage *soundrecorder* | remove-appxpackage"
:: Store
::powershell "Get-AppxPackage *Store* | Remove-AppxPackage"
:: Sway
powershell "Get-AppxPackage *sway* | remove-appxpackage"
:: Telefon
::powershell "Get-AppxPackage *commsphone* | remove-appxpackage"
:: Telefon-Begleiter
::powershell "Get-AppxPackage *windowsphone* | remove-appxpackage"
:: Twitter
powershell "Get-AppxPackage *Twitter* | Remove-AppxPackage"
:: Video
::powershell "Get-AppxPackage *Video* | Remove-AppxPackage"
:: Wetter App
::powershell "Get-AppxPackage *Weather* | Remove-AppxPackage"
:: Windows Holographic
::powershell "Get-AppxPackage *HolographicFirstRun* | Remove-AppxPackage"
:: Xbox
::powershell "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
:: Xbox Identity Provider
::powershell "Get-AppxPackage *xboxIdentityprovider* | Remove-AppxPackage"

echo.
echo.
echo    ...Done!

pause