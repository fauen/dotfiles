if ($PSVersionTable.Platform -eq "Unix") {
    function prompt {
        param (
        )
        "$env:USER`@$env:NAME`:$(Get-Location) >>> "        
    }
}
else {
    function prompt {
        param (
        )
        "$env:USERNAME`@$env:COMPUTERNAME`:$(Get-Location) >>> " 
    }
}
