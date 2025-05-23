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
    "Dell OS Recovery Tool"

    #Tools cleanup
    "Hard Disk Sentinel"
    "AOMEI Partition Assistant*"
    "Treesize Free*"
    "CrystalDiskMark*"
    "PatchCleaner"
    "Samsung Magician" 
)

#Uninstall Programs from the above list
foreach ($program in $programList) {
    try {
        (Get-WMIObject Win32_Product -Filter "Name='$program'").Uninstall() | Out-Null
    } catch {
        Write-Host "An error occurred, but continuing..."
    }
}

Set-ExecutionPolicy Restricted 
