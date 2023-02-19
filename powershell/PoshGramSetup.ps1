if ($PSVersionTable.Platform -eq "Unix") {
    if (-not (Test-Path $env:HOME/.gramtoken)) {
        Read-Host "Telegram token: " -MaskInput | Out-File -FilePath $env:HOME/.gramtoken
        (Get-Item $env:HOME\.gramtoken).Attributes += 'Hidden'
    }
    if (-not (Test-Path $env:HOME/.gramchat)) {
        Read-Host "Telegram chat id: " -MaskInput | Out-File -FilePath $env:HOME/.gramchat
        (Get-Item $env:HOME\.gramchat).Attributes += 'Hidden'
    }
    $gramToken = (Get-Content $env:HOME/.gramtoken)
    $gramChat = (Get-Content $env:HOME/.gramchat)
}
else {
    if (-not (Test-Path $env:HOMEPATH\.gramtoken)) {
        Read-Host "Telegram token: " -MaskInput | Out-File -FilePath $env:HOMEPATH\.gramtoken
        (Get-Item $env:HOMEPATH\.gramtoken).Attributes += 'Hidden'
    }
    if (-not (Test-Path $env:HOMEPATH\.gramchat)) {
        Read-Host "Telegram chat id: " -MaskInput | Out-File -FilePath $env:HOMEPATH\.gramchat
        (Get-Item $env:HOMEPATH\.gramchat).Attributes += 'Hidden'
    }
    $gramToken = (Get-Content $env:HOMEPATH\.gramtoken)
    $gramChat = (Get-Content $env:HOMEPATH\.gramchat)
}

if (-not (Get-Module PoshGram)) {
    Install-Module PoshGram
    Import-Module PoshGram
}
else {
    Import-Module PoshGram
}

$gramMsg = Read-Host "What do you want to send? "
Send-TelegramTextMessage -BotToken $gramToken -ChatID $gramChat -Message $gramMsg