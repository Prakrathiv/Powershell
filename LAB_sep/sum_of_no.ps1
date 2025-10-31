$sum = 0
for ($i = 1; $i -le 100; $i++) {
    $sum += $i
}
Write-Output "Sum = $sum"