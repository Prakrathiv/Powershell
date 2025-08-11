$array = @(1,5,3,7,2,9)

$target = Read-Host "enter the number to search for in the array" 

$found = $false 
$index = -1 

for ($i = 0 ; $i -lt $array.length ; $i ++ ){
    if ($array[$i] -eq $target){
        $found= $True 
        $index = $i 
        break
    }
}
if ($found  ){
    write-host "number found at index $index"
}else{
    write-host "number not found"
}