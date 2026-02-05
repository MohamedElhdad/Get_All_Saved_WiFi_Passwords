 
@echo off


@REM color 3

echo   {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{ Welcome To Elhdad Program }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}


 netsh wlan show profile 

 set /p  name= insert WiFi name :  

 netsh wlan show profile name = "%name%"  key = "clear"

 echo {{{{{{{{{ Key Content = WiFi password }}}}}}}}}

 echo .
 
 echo .

 pause

