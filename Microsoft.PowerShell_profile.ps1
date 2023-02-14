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
    . $env:HOME/PowershellPrompt.ps1
    . $env:HOME/PowershellFunctions.ps1
    . $env:HOME/PowershellAliases.ps1
}
else {
    . $env:HOMEPATH\PowershellPrompt.ps1
    . $env:HOMEPATH\PowershellFunctions.ps1
    . $env:HOMEPATH\PowershellAliases.ps1
}

# The ErrorAction here is specifically for Unix platforms.
Set-PSReadLineOption -PredictionViewStyle ListView -ErrorAction Ignore