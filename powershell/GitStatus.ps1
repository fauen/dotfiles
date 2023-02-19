if ($PSVersionTable.Platform -eq 'Unix') {
    if (-not(Test-Path $env:HOME/.config/.gitrepos)) {
        Write-Output "`r`nLooks like this is your first time running this.`r`nWe have to setup what repos to look for.`r`nRun the script again when you are done.`r`n"
        $gitrepos = Read-Host -Prompt "Input the repo names"
        $gitrepos.Replace(" ","`r`n") | Out-File $env:HOME/.config/.gitrepos
        (Get-Item $env:HOME/.config/.gitrepos).Attributes += 'Hidden'
    }
    else {
        foreach($line in Get-Content $env:HOME/.config/.gitrepos) {
            Write-Output `n
            Set-Location $env:HOME/github/$line
            Write-Output $line 
            Read-GitHub 
            Set-Location
        }
    }
}
else {
    if (-not(Test-Path $env:HOMEPATH\.config\.gitrepos)) {
        Write-Output "`r`nLooks like this is your first time running this.`r`nWe have to setup what repos to look for.`r`nRun the script again when you are done.`r`n"
        $gitrepos = Read-Host -Prompt "Input the repo names"
        $gitrepos.Replace(" ","`r`n") | Out-File $env:HOMEPATH\.config\.gitrepos
        (Get-Item $env:HOMEPATH\.config\.gitrepos).Attributes += 'Hidden'
    }
    else {
        foreach($line in Get-Content $env:HOMEPATH\.config\.gitrepos) {
            Write-Output `n
            Set-Location $env:HOMEPATH\github\$line
            Write-Output $line 
            Read-GitHub 
            Set-Location
        }
    }
}