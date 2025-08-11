$number = [int] (Read-Host "Enter the number" );

if ($number -gt 0 ){
    Write-Host "$number is positive"

}elseif ($number -lt 0) {
    Write-Host " $number is negative"

}else{
    Write-Host " $number is Zero"
}

