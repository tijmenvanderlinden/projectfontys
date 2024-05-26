# git links
$chromeUrl = "https://github.com/tijmenvanderlinden/projectfontys/raw/main/ChromeSetup.exe"
$parsecUrl = "https://github.com/tijmenvanderlinden/projectfontys/raw/main/parsec-windows%20(1).exe"
$steamUrl = "https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe"

# download path
$downloadPath = "C:\Temp"
if (-Not (Test-Path $downloadPath)) {
    New-Item -Path $downloadPath -ItemType Directory
}

# de download van de installers
Invoke-WebRequest -Uri $chromeUrl -OutFile "$downloadPath\ChromeSetup.exe"
Invoke-WebRequest -Uri $parsecUrl -OutFile "$downloadPath\parsec-windows (1).exe"
Invoke-WebRequest -Uri $steamUrl -OutFile "$downloadPath\SteamSetup.exe"

# installatie van de files
Start-Process "$downloadPath\ChromeSetup.exe" -ArgumentList "/silent /install" -Wait
Start-Process "$downloadPath\parsec-windows (1).exe" -ArgumentList "/silent" -Wait
Start-Process "$downloadPath\SteamSetup.exe" -ArgumentList "/silent" -Wait
