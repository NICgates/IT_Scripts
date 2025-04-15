::#############################################################################
::Random usefull commands for automating or performing tasks in the background. 


::#############################################################################
::NETWORK COMMANDS
netsh interface ipv4 set dns name="Wi-Fi" static 8.8.8.8
netsh interface ipv4 add dns name="Wi-Fi" 8.8.4.4 index=2
ipconfig /flushdns
ipconfig /all

::#############################################################################
:: HDD CLEANUP 
del /s /q C:\Windows\Temp\*
del /s /q C:\Users\*\AppData\Local\Temp\*

:: CLEAR WINDOWS UPDATE CACHE
net stop wuauserv
rmdir /s /q C:\Windows\SoftwareDistribution
net start wuauserv




