function Receive-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git pull
    }
    else {
        Write-Verbose -Message "Git is not installed"
    }
}

function Read-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git status
    }
    else {
        Write-Verbose -Message "Git is not installed"
    } 
}

function Send-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git push
    }
    else {
        Write-Verbose -Message "Git is not installed"
    } 
}

function Write-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git add .; git commit; git push
    }
    else {
        Write-Verbose -Message "Git is not installed"
    } 
}

function Get-Weather {
    [CmdletBinding()]
    param (
        [string[]]$Location
    )
    if ($Location -eq $null) {
        (Invoke-WebRequest "wttr.in/?m").Content
    }
    else {
        (Invoke-WebRequest "wttr.in/${Location}?m").Content
    }
}