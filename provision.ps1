# Set keyboard layout
Set-WinUserLanguageList fr-CH -Force

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install programs
choco install dropbox -y
choco install microsoft-edge -y
choco install microsoft-office-deployment -y --params="'/64bit /Product:O365BusinessRetail /Exclude:Publisher,OneDrive,Outlook,OneNote,Groove,Access'"
