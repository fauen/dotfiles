# Set the prompt
function prompt {"$env:USERNAME`@$env:COMPUTERNAME`:$(get-location) >>> "}

if ($PSVersionTable.Platform -eq "Unix") {
    . $env:HOME/PowershellFunctions.ps1
}
else {
    . $env:HOMEPATH\PowershellFunctions.ps1
}

# Test function to learn how it works and how Invoke-Webrequest can get correct content like curl.
function weather {
    if ( $args -eq $null ) 
    {
        (Invoke-WebRequest "wttr.in/?m").Content
    }
    else
    {
        (Invoke-WebRequest "wttr.in/${args}?m").Content
    } 
}

Import-Module -Name Terminal-Icons

# Make sure you have a font installed like Caskydia NF or you might get an error.
#if ( get-module -Name Terminal-Icons )
#{
#	import-module Terminal-Icons
#}
#else
#{
#	install-module -Name Terminal-Icons
#	import-module -Name Terminal-Icons
#}

# Instead of using the default one, this will show a list.
# You can also run:
# Set-PSReadLineOption -PredictionSource None 
# to not get any predictions.

Set-PSReadLineOption -PredictionViewStyle ListView
