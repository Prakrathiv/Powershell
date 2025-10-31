$a = 0
$b = 1
while ($a -le 100) {
    Write-Output $a
    $c = $a + $b
    $a = $b
    $b = $c
}