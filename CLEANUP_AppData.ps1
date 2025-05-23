#AppData Cleanup
$users = Get-ChildItem C:\Users
foreach ($user in $users) {
    	$appDataPath = "$($user.FullName)\AppData"
    	Write-Output "Processing $appDataPath"
     
	######################## CHROME ########################
	#Chrome Cache
	Remove-Item "$appDataPath\Local\Google\Chrome\User Data\*\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Chrome Code Cache 
	Remove-Item "$appDataPath\Local\Google\Chrome\User Data\*\Code Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Chrome Temp Files
	Remove-Item "$appDataPath\Local\Google\Chrome\User Data\*\Local Storage\*" -Recurse -Force -ErrorAction SilentlyContinue
        #Cached Website Data 
        Remove-Item "$appDataPath\Local\Google\Chrome\User Data\*\Service Worker\CacheStorage\*" -Recurse -Force -ErrorAction SilentlyContinue
	
	######################## MICROSOFT ########################
	#Microsoft Temp Files
	Remove-Item "$appDataPath\Local\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Microsoft Office Cache 
	Remove-Item "$appDataPath\Local\Microsoft\Office\16.0\OfficeFileCache\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Microsoft Edge Cache 
	Remove-Item "$appDataPath\Local\Microsoft\Edge\User Data\Default\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Microsoft Office SolutionPackages
	Remove-Item "$appDataPath\Local\Microsoft\Office\SolutionPackages\*" -Recurse -Force -ErrorAction SilentlyContinue
 
        ######################## ONEDRIVE ########################
	#Microsoft OneDrive -- Uninstall it and cleanup files 
 	#(Get-WMIObject Win32_Product -Filter "Name='Microsoft OneDrive'").Uninstall()
        #Remove-Item "$appDataPath\Local\Microsoft\OneDrive\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Remove-Item "$appDataPath\Local\OneDrive\*" -Recurse -Force -ErrorAction SilentlyContinue
 
	######################## MISC ########################
	#Adobe Temp Files
	Remove-Item "$appDataPath\Local\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Adobe Cache 
	Remove-Item "$appDataPath\Roaming\Adobe\Common\Media Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Other application temp & cache locations
	Remove-Item "$appDataPath\Roaming\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Firefox Cache
	Remove-Item "$appDataPath\Local\Mozilla\Firefox\Profiles\<ProfileName>\cache2\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Opera Cache
	Remove-Item "$appDataPath\Local\Opera Software\Opera Stable\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Spotify Cache
	Remove-Item "$appDataPath\Local\Spotify\Storage\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Slack Cache
	Remove-Item "$appDataPath\Roaming\Slack\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
	#Discord Cache
	Remove-Item "$appDataPath\Roaming\discord\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
}

#Prefetch Files
Remove-Item "C:\Windows\Prefetch*" -Recurse -Force -ErrorAction SilentlyContinue
#Windows Update Cache
Remove-Item "C:\Windows\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
