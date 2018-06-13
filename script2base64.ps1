try {
    $filepath = $args[0]
    $bintext = [System.Text.Encoding]::Unicode.GetBytes([System.IO.File]::ReadAllText($filepath))
    $encoded = [System.Convert]::ToBase64String($bintext)
    $command = "powershell.exe -enc $($encoded)"
    Write-Host $command
} catch {
    Write-Host "Usage: $($MyInvocation.MyCommand.Path) <Input File Path>"
}