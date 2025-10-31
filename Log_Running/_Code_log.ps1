$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$logFile = "Log_Running/Log_$timestamp.txt"

# Ensure the Log_Running directory exists
if (-not(Test Path $logFile)){
    New-Item -Path "C:\Logs" -ItemType Directory
}
# Create or overwrite the log file
New-Item -Path $logFile -ItemType File -Force | Out-Null
# Log the start time
"Log started at: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")" | Out-File -FilePath $logFile -Append       
# Example log entries
"Performing task 1..." | Out-File -FilePath $logFile -Append
Start-Sleep -Seconds 2
"Task 1 completed." | Out-File -FilePath $logFile -Append
"Performing task 2..." | Out-File -FilePath $logFile -Append
Start-Sleep -Seconds 3
"Task 2 completed." | Out-File -FilePath $logFile -Append
# Log the end time
"Log ended at: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")" | Out-File -FilePath $logFile -Append
if (-not (Test-Path -Path "Log_Running")) {
    New-Item -ItemType Directory -Path "Log_Running" | Out-Null
}
Move-Item -Path $logFile -Destination "Log_Running/$($logFile.Split('\')[-1])"
if (-not (Test-Path -Path "Log_Archive")) {
    New-Item -ItemType Directory -Path "Log_Archive" | Out-Null
}
Move-Item -Path "Log_Running/$($logFile.Split('\')[-1])" -Destination "Log_Archive/$($logFile.Split('\')[-1])"
# Move the log file to Log_Running directory
"Log file moved to Log_Archive directory." | Out-File -FilePath "Log_Archive/$($logFile.Split('\')[-1])" -Append