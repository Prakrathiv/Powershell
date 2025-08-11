$Size = [int] (Read-Host "Enter the range")
$sum = 0
for ($i = 0 ; $i -lt $Size ; $i ++){
    $sum += $i
}
Write-Host "$sum is the sum of the first $Size natural numbers"
