# Import or Install modules
if (Get-Module -ListAvailable -Name Terminal-Icons) {
    Import-Module -Name Terminal-Icons -ErrorAction Ignore
}
else {
    Set-PSRepository PSGallery -InstallationPolicy Trusted -ErrorAction Inquire
    Install-Module Terminal-Icons -ErrorAction Ignore
    Import-Module Terminal-Icons -ErrorAction Ignore
}

# Load the Prompt, Functions and Aliases
if ($PSVersionTable.Platform -eq "Unix") {
    . $env:HOME/.config/powershell/PowershellPrompt.ps1
    . $env:HOME/.config/powershell/PowershellFunctions.ps1
    . $env:HOME/.config/powershell/PowershellAliases.ps1
}
else {
    . $env:HOMEPATH\.config\powershell\PowershellPrompt.ps1
    . $env:HOMEPATH\.config\powershell\PowershellFunctions.ps1
    . $env:HOMEPATH\.config\powershell\PowershellAliases.ps1
}

# The ErrorAction here is specifically for Unix platforms.
if (-not (Set-PSReadLineOption -PredictionViewStyle ListView)) {
    Set-PSReadLineOption -PredictionViewStyle ListView
}