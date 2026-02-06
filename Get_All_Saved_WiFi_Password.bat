@echo off

title Elhdad Program

color 3

echo   {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{ Welcome To Elhdad Program }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}


 netsh wlan show profile 

 set /p  name= insert WiFi name :  

setlocal enabledelayedexpansion

for /F "tokens=2 delims=: usebackq" %%F IN (`netsh wlan show profile "%name%" key^=clear ^| find "Key Content"`) do (
    
        set wifi_pass= %%F
    )

cls

color 4

    echo ====================================
    echo .
    echo  %name% : %wifi_pass%  
    echo .
    echo ====================================
    
 echo .
 
 echo .

 pause




@REM @echo off
@REM setlocal enabledelayedexpansion

@REM for /F "tokens=2 delims=:" %%a in ('netsh wlan show profile') do (
@REM     set wifi_pass=
@REM     for /F "tokens=2 delims=: usebackq" %%F IN (`netsh wlan show profile %%a key^=clear ^| find "Key Content"`) do (
@REM         set wifi_pass=%%F
@REM     )
@REM     echo %%a : !wifi_pass!
@REM )
