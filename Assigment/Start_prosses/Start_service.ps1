$serviceName = "spooler"
$service = Get-Service -Name $serviceName 
if ($service -ne "Running"){
    Start-Service -Name $serviceName
    Write-Output "$serviceName service Started."
}else{
    Write-Output "$serviceName service is already running."
}