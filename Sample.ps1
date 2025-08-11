$number1 = [int] (Read-Host "Enter the number 1" );
$number2 = [int] (Read-Host "Enter the number 2" );
$result = $number1 + $number2;
Write-Host "The result is $result";

if ($result -gt 0){
    Write-Host "the number is positive";

}else {
   Write-Host "the number is negative";
}