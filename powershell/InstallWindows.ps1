# Default applications to install when you have a new Windows install.

Clear-Host

$userOption = @"
1. Install applications through winget.
2. Link config file from github repo.
3. Install WSL
4. Check the weather (because why not?).
0. Nothing.

"@

$userOption

[int]$answer = Read-Host 'What do you want to do?'
switch ( $answer ) {
    1 {
        Write-Host "Trying to install Discord..." -ForegroundColor "Yellow"
        winget install --id=Discord.Discord -e --accept-source-agreements
        Write-Host "Trying to install Visual Studio Code..." -ForegroundColor "Yellow"
        winget install --id=Microsoft.VisualStudioCode -e --accept-source-agreements
        Write-Host "Trying to install 7zip..." -ForegroundColor "Yellow"
        winget install --id=7zip.7zip -e --accept-source-agreements
        Write-Host "Trying to install Firefox..." -ForegroundColor "Yellow"
        winget install --id=Mozilla.Firefox -e --accept-source-agreements
        Write-Host "Trying to install PowerToys..." -ForegroundColor "Yellow"
        winget install --id=Microsoft.PowerToys -e --accept-source-agreements
        Write-Host "Trying to install Spotify..." -ForegroundColor "Yellow"
        winget install --id=Spotify.Spotify -e --accept-source-agreements
        Write-Host "Trying to install VLC..." -ForegroundColor "Yellow"
        winget install --id=VideoLAN.VLC -e --accept-source-agreements
    }
    2 {
        $filePath = "$env:HOMEPATH\github\dotfiles\powershell\PowershellLinks.ps1"
        if (Test-Path -Path $filePath) {
            Invoke-Expression -Command $filePath
        }
        else {
            Write-Host -Message 'Path does not exist!' -ForegroundColor "Red"
        }
    }
    3 {
        wsl.exe --install
        if ($? -eq $true) {
            Write-Host "WSL is installed" -ForegroundColor "Yellow"
        }
        else {
            Write-Host "Something went wrong..." -ForegroundColor "Red"
        }
    }
    4 {
        (Invoke-WebRequest "https://wttr.in/?m").Content
    }
    0 {
        break
    }
    default {
        .\install_windows.ps1
    }
}