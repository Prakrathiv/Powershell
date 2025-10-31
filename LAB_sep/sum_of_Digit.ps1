$num = 1234
$sum = 0
while ($num -ne 0) {
    $sum += $num % 10
    $num = [math]::Floor($num / 10)
}
Write-Output "Sum of digits = $sum"
