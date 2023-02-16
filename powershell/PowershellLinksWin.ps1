# These are the links I need to have in place.
New-Item -ItemType SymbolicLink -Path $PROFILE -Target $env:HOMEPATH\github\dotfiles\powershell\Microsoft.PowerShell_profile.ps1
New-Item -ItemType SymbolicLink -Path $env:HOMEPATH\.config\powershell\PowershellPrompt.ps1 -Target $env:HOMEPATH\github\dotfiles\powershell\PowershellPrompt.ps1
New-Item -ItemType SymbolicLink -Path $env:HOMEPATH\.config\powershell\PowershellFunctions.ps1 -Target $env:HOMEPATH\github\dotfiles\powershell\PowershellFunctions.ps1
New-Item -ItemType SymbolicLink -Path $env:HOMEPATH\.config\powershell\PowershellAliases.ps1 -Target $env:HOMEPATH\github\dotfiles\powershell\PowershellAliases.ps1