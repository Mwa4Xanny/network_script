@echo off
REM ****************************************************************************************************
REM Prograammer.....: (C) Afonso Cardoso
REM Date............: 17/10/2024
REM Description------: network script
REM ****************************************************************************************************
:MENU
cls
echo ###################################################
echo NETWORK SCRIPT                                    #
echo # (C) 2024 . Afonso Cardoso                       #
echo ###################################################
echo 1 - IP configurations
echo 2 - renew ip configs  
echo 3 - dns DNS QUERY
echo 4 - Show MAC address
echo 5 - ENERGY EFFICIENT
echo 6 - File/APP Association
echo 7 - Disc Repair
echo 8 - ping to URL
echo 9 - Users to File
echo 10 - Exit

set /p opt="select an option:"

if %opt% == 1 goto IP_CONFIGURATIONS
if %opt% == 2 goto RENEW_IP_CONFIGURATIONS
if %opt% == 3 goto DNS_QUERY    
if %opt% == 4 goto SHOW_MAC_ADDRESS
if %opt% == 5 goto ENERGY_EFFICIENT
if %opt% == 6 goto FILE_APP_ASSOC
if %opt% == 7 goto DISC_REPAIR
if %opt% == 8 goto QR_CODE_URL
if %opt% == 9 GOTO USERS_TO_FILE
if %opt% == 10 goto EXIT_SCRIPT

:IP_CONFIGURATIONS
ipconfig /all
pause
goto MENU

:IP_CONFIGURATIONS
ipconfig /all
pause
goto MENU
:RENEW_IP_CONFIGURATIONS
ipconfig /release
pause
ipconfig /renew  
goto MENU

:DNS_QUERY
set /p domain=""
set /p dnsserver=""
nslookup %domain% %dnsserver%
pause
goto MENU

:SHOW_MAC_ADDRESS
getmac
pause
goto MENU

:ENERGY_EFFICIENT
powercfg /energy  
pause
goto MENU

:FILE_APP_ASSOC
assoc > output.txt
pause
goto MENU

:DISC_REPAIR
chkdsk /f /r 
pause
goto MENU

:QR_CODE_URL
set /p url="insert url:"
ping %url%
pause
goto MENU

:USERS_TO_FILE
net user > users.txt
pause
goto MENU



:EXIT_SCRIPT
echo "Thanks!"
exit /b 