#Uninstall Programs
Set-ExecutionPolicy RemoteSigned

#LIST
$programList = @(
    #Unnused Apps 
    "Teams Machine-Wide Installer"

    #Dell Bloatware
    "Dell SupportAssist"
    "Dell Power Manager Service"
    "Dell Command | Update for Windows 10"
    "MyDell"
    "Dell Digital Delivery"
    "Dell Digital Locker"
    "Dell Optimizer" 

    #Tools cleanup
    "Hard Disk Sentinel"
    "AOMEI Partition Assistant*"
    "Treesize Free*"
    "CrystalDiskMark*"
    "PatchCleaner"

)

#Uninstall Programs from the above list
foreach ($program in $programList) {
    (Get-WMIObject Win32_Product -Filter 'name=$program').Uninstall()
}

Set-ExecutionPolicy Restricted 
