$number = [int] (Read-Host "Enter the number");
if ($number % 2 -eq 0){
    Write-Host "The number is even"
}else{
    Write-host "The number is odd"
}