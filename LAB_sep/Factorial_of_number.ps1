$num = 5
$factorial = 1
for ($i = 1; $i -le $num; $i++) {
    $factorial *= $i
}
Write-Output "Factorial of $num = $factorial"