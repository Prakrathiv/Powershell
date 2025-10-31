# passing output from one cmdlet to other using pipeline
$serviceName = "Spooler"
Get-Service -Name $serviceName

Get-Help -Name Stop-Service -Full
(get-Service -Name $serviceName).GetType() # System.ServiceProcess.ServiceController
Get-Service -Name $serviceName | Stop-Service -Force

$services = New-Object System.Collections.ArrayList
$services.AddRange(@("Spooler","W32Time","BITS"))
$services | Get-Service
$sexrvices | Get-Service | Start-Service

$services | Get-Service | ForEach-Object{Write-Output "Service $($_.DisplayName) is currently $($_.Status)"}
