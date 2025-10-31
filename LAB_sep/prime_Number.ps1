for ($num = 2; $num -le 50; $num++) {
    $isPrime = $true
    for ($i = 2; $i -le [math]::Floor($num / 2); $i++) {
        if ($num % $i -eq 0) {
            $isPrime = $false
            break
        }
    }
    if ($isPrime) {
        Write-Output $num
    }
}