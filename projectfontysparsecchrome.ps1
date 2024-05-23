# Set download paths from your GitHub repository
$chromeUrl = "https://github.com/tijmenvanderlinden/projectfontys/raw/main/ChromeSetup.exe"
$parsecUrl = "https://github.com/tijmenvanderlinden/projectfontys/raw/main/parsec-windows%20(1).exe"

# Ensure the Temp directory exists
$downloadPath = "C:\Temp"
if (-Not (Test-Path $downloadPath)) {
    New-Item -Path $downloadPath -ItemType Directory
}

# Download installers
Invoke-WebRequest -Uri $chromeUrl -OutFile "$downloadPath\ChromeSetup.exe"
Invoke-WebRequest -Uri $parsecUrl -OutFile "$downloadPath\parsec-windows (1).exe"

# Install applications
# Ensure the full path is used and correct the arguments if it's an .exe
Start-Process "$downloadPath\ChromeSetup.exe" -ArgumentList "/silent /install" -Wait
Start-Process "$downloadPath\parsec-windows (1).exe" -ArgumentList "/silent" -Wait