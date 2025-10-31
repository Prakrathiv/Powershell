$outputFile = "C:\Reports\ServicesStatus.txt"

# Get the list of services and their statuses
Get-Service | Select-Object Name, Status | Out-File -FilePath $outputFile

# Output a confirmation message
Write-Output "Service status report generated at $outputFile"