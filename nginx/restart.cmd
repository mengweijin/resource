@echo off

rem refresh nginx.conf
rem nginx.exe -s reload

rem nginx.exe -s stop

rem execute "nginx.exe -s stop" or nginx.exe -s quit" can't stop all nginx process on windows operate system.
rem And stil 80 Listening, the browser stil can vist page. 
rem So force kill the nginx process
taskkill /f /im nginx.exe

rem restart
start nginx.exe

rem pause

