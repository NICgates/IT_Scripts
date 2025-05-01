#Script for installing an EXE via GPO script. 
$InstallerPath = "\\server\share\setup.exe"  # Replace with the actual network path
$Arguments = "/quiet /norestart"  # Adjust arguments based on the installer

Start-Process -FilePath $InstallerPath -ArgumentList $Arguments -Wait -NoNewWindow
