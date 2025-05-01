#Delete temporary files from Windows 
Remove-Item -Path "$env:TEMP\*" -Force -Recurse

#Clear Windows update cache
Stop-Service -Name wuauserv
Remove-Item -Path "C:\Windows\SoftwareDistribution\Download\*" -Force -Recurse
Start-Service -Name wuauserv

#Clear Recyclebin contents
Clear-RecycleBin -Force

#Delete Windows Prefetch
Remove-Item -Path "C:\Windows\Prefetch\*" -Force -Recurse

#Cleanup WinSxS folder
Dism /Online /Cleanup-Image /StartComponentCleanup

#Delete Restore Points 
#vssadmin delete shadows /for=C: /all /quiet
#Create a Restore Point
#Checkpoint-Computer -Description "After Cleanup" -RestorePointType "MODIFY_SETTINGS"
