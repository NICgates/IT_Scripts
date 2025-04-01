##########################################################
# Uninstall unnecessary Windows apps
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

$appList = @(
    "Microsoft.Copilot*"
    "Microsoft.SkypeApp*"
    "Microsoft.YourPhone*"
    "king.com.CandyCrushFriends*"
    "king.com.FarmHeroesSaga*"
    "FINGERSOFT.HILLCLIMBRACING*"
    "Microsoft.MicrosoftSolitaireCollection*"
    "Microsoft.Xbox*"
)

foreach ($app in $appList) {
    Get-AppxPackage -allusers $app | Remove-AppxPackage -ErrorAction SilentlyContinue               
}

Set-ExecutionPolicy -ExecutionPolicy Restricted
