::NETWORK COMMANDS (change the name to the desired network adapter)
netsh interface ipv4 set dns name="Wi-Fi" static 8.8.8.8
netsh interface ipv4 add dns name="Wi-Fi" 8.8.4.4 index=2
#It's a good idea to ping the address you're settings to verify it's available. 
netsh interface ipv4 set address name="Ethernet" static 192.168.1.100 255.255.255.0 192.168.1.1
ipconfig /flushdns
ipconfig /all
