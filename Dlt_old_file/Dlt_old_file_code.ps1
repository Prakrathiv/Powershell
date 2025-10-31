$logDirectory = "C:\Logs"

# Get log files older than 30 days
$oldLogs = Get-ChildItem -Path $logDirectory -Filter *.log | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-30) }

# Remove old log files
foreach ($log in $oldLogs) {
    Remove-Item -Path $log.FullName
    Write-Output "Deleted $($log.FullName)"
}