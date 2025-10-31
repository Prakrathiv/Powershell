
$num = 1234
$reversed = 0
while ($num -ne 0) {
    $digit = $num % 10
    $reversed = $reversed * 10 + $digit
    $num = [math]::Floor($num / 10)
}
Write-Output "Reversed Number = $reversed"