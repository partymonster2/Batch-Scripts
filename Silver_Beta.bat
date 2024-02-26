@echo off
chcp 65001 >nul
:loading
cls
color 07
title SilverC2 - Logging In...
set /p "username=Username: "

rem Prompting for the product key
set /p "product_key=Key: "

rem Checking if the product key is empty
if "%product_key%"=="" (
    echo Key does not exist
    pause
    cls
    goto loading
) else (
    echo Your key is: %product_key%
    pause
    rem Additional actions can be added here
)
cls
title SilverC2 - Connecting To Server...
echo Welcome, %username%! Connecting you to our servers, please wait.
timeout 3 >nul
goto :main


:main
cls
title SilverC2 - Status: Connected - Logged in as %username%
color 07
echo.
echo.
echo.
echo                                                    ┌─┐┬┬ ┬  ┬┌─┐┬─┐
echo                                                    └─┐││ └┐┌┘├┤ ├┬┘
echo                                                    └─┘┴┴─┘└┘ └─┘┴└─
echo                                    ────────────────────────────────────────────────
echo                                                For Commands type "help"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ┌─SilverC2
set /p "silver=└──%username%@home#~ "

IF /I "%silver%"=="help" GOTO :help
IF /I "%silver%"=="layer4" GOTO :layer4
IF /I "%silver%"=="layer7" GOTO :layer7
IF /I "%silver%"=="ping" GOTO :ping
IF /I "%silver%"=="key" GOTO :key
IF /I "%silver%"=="info" GOTO :info
IF /I "%silver%"=="admin" GOTO :adminlogin
GOTO :main

:help
cls
title SilverC2 - Status: Connected - Command List
echo.
echo.
echo.
echo                                                    ┌─┐┬┬ ┬  ┬┌─┐┬─┐
echo                                                    └─┐││ └┐┌┘├┤ ├┬┘
echo                                                    └─┘┴┴─┘└┘ └─┘┴└─
echo                                    ┌──────────────────────────────────────────────┐
echo                                    │                 Command List                 │
echo                                    ├───────────────────────┬┬─────────────────────┤
echo                                    │help-------------------││brings you here------│
echo                                    │layer4-----------------││layer4 methods-------│
echo                                    │layer7-----------------││layer7 methods-------│
echo                                    │ping-------------------││pings ips [paping]---│
echo                                    │key--------------------││shows users key------│
echo                                    │info-------------------││shows info on silver-│
echo                                    └───────────────────────┴┴─────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ┌─SilverC2
set /p "silver=└──%username%@help#~ "
IF /I "%silver%"=="home" GOTO :main
GOTO :end

:layer4
cls
title SilverC2 - Status: Connected - Layer 4
echo.
echo.
echo.
echo                                                    ┌─┐┬┬ ┬  ┬┌─┐┬─┐
echo                                                    └─┐││ └┐┌┘├┤ ├┬┘
echo                                                    └─┘┴┴─┘└┘ └─┘┴└─
echo                                    ┌──────────────────────────────────────────────┐
echo                                    │                Layer 4 Attack                │
echo                                    │Method -- Max Use Length -- VIP/Standard/Basic│
echo                                    ├──────────────────────────────────────────────┤
echo                                    │UDP    -- 1200 Seconds   -- VIP/Standard/Basic│
echo                                    │TLS    -- 1200 Seconds   -- VIP/Standard/Basic│
echo                                    │DNS    -- 2700 Seconds   -- VIP/Standard/Basic│
echo                                    │STUN   -- 21600Seconds   -- VIP/Standard      │
echo                                    │HOME   -- 86400Seconds   -- VIP               │
echo                                    │GAME   -- 1200 Seconds   -- VIP/Standard      │
echo                                    │BYPASS -- 2700 Seconds   -- VIP               │
echo                                    │BYPASS2-- 2700 Seconds   -- VIP               │
echo                                    └──────────────────────────────────────────────┘
echo.
echo.
echo.
echo ┌─SilverC2
set /p "silver=└──%username%@layer4#~ "
IF /I "%silver%"=="home" GOTO :main
GOTO :end

:layer7
cls
title SilverC2 - Status: Connected - Layer 7
echo.
echo.
echo.
echo                                                    ┌─┐┬┬ ┬  ┬┌─┐┬─┐
echo                                                    └─┐││ └┐┌┘├┤ ├┬┘
echo                                                    └─┘┴┴─┘└┘ └─┘┴└─
echo                                    ┌──────────────────────────────────────────────┐
echo                                    │                Layer 7 Attack                │
echo                                    │Method -- Max Use Length -- VIP/Standard/Basic│
echo                                    ├──────────────────────────────────────────────┤
echo                                    │HTTP1  -- 1200 Seconds   -- VIP/Standard/Basic│
echo                                    │HTTP2  -- 1200 Seconds   -- VIP/Standard/Basic│
echo                                    │HTTP3  -- 2700 Seconds   -- VIP/Standard/     │
echo                                    │STUN   -- 21600Seconds   -- VIP/Standard      │
echo                                    │BROWSE -- 86400Seconds   -- VIP               │
echo                                    │BYPASS -- 2700 Seconds   -- VIP               │
echo                                    │BYPASS2-- 2700 Seconds   -- VIP               │
echo                                    └──────────────────────────────────────────────┘
echo.
echo.
echo.
echo ┌─SilverC2
set /p "silver=└──%username%@layer4#~ "
IF /I "%silver%"=="home" GOTO :main
GOTO :end

:key
cls
title SilverC2 - Status: Connected - Key
echo Your Key is..
wmic path softwarelicensingservice get OA3xOriginalProductKey | findstr /V OA3xOriginalProductKey
echo ┌─SilverC2
set /p "silver=└──%username%@key#~ "
IF /I "%silver%"=="home" GOTO :main
GOTO :end