##########################################################
# Uninstall unnecessary Windows apps
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

$appList = @(
    # MICROSOFT APPS
    # "Microsoft.WindowsStore*"
    # "Microsoft.StorePurchaseApp*"
    "Microsoft.Copilot*"
    "Microsoft.SkypeApp*"
    "Microsoft.YourPhone*"
    "Microsoft.BingWeather*"
    "Microsoft.GetHelp*"
    "Microsoft.MixedReality.Portal*"
    "Microsoft.People*"
    "Microsoft.Print3D*"
    "Microsoft.SkypeApp*"
    "Microsoft.Wallet*"
    "Microsoft.WindowsAlarms*"
    "Microsoft.windowscommunicationsapps*"
    "Microsoft.WindowsFeedbackHub*"
    "Microsoft.WindowsMaps*"
    "Microsoft.YourPhone*"
    "Microsoft.ZuneMusic*"
    "Microsoft.ZuneVideo*"
    "*ActiproSoftwareLLC*"
    
    # GAMES
    "*CandyCrush*"
    "*king.com.FarmHeroesSaga*"
    "*HILLCLIMBRACING*"
    "Microsoft.MicrosoftSolitaireCollection*"
    "Microsoft.Maps*"
    "Microsoft.Microsoft3DViewer*"
    "*ROBLOXCORPORATION.ROBLOX*"
    "*HiddenCityMysteryofShadows*"
    
    # XBOX APPS
    "Microsoft.Xbox.TCUI*"
    "Microsoft.XboxApp*"
    "Microsoft.XboxGameOverlay*"
    "Microsoft.XboxGamingOverlay*"
    "Microsoft.XboxIdentityProvider*"
    "Microsoft.XboxSpeechToTextOverlay*" 
)

foreach ($app in $appList) {
    Get-AppxPackage -allusers $app | Remove-AppxPackage -ErrorAction SilentlyContinue               
}


   

 
    
    



