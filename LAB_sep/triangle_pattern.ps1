$rows = 5
for ($i = 1; $i -le $rows; $i++) {
    $line = ""
    for ($j = 1; $j -le $i; $j++) {
        $line += "* "
    }
    Write-Output $line
}