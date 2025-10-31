1 -eq 1 # Equals
1 -ne 2 # Not Equals
1 -lt 2 # Less Than
1 -le 1 # Less Than or Equals
1 -gt 0 # Greater Than
1 -ge 1 # Greater Than or Equals
1 -like 1 # Like
1 -notlike 2 # Not Like
1 -match '1' # Match (regex)
1 -notmatch '2' # Not Match (regex) 
1 -in @(1,2,3) # In
1 -notin @(4,5,6) # Not In
1 -is [int] # Is
1 -isnot [string] # Is Not  

# Logical Operators
$true -and $false # And
$true -or $false # Or
$true -xor $false # Xor

@(1,2,3) -contains 2 # Contains 
@(1,2,3) -notcontains 4 # Not Contains  
@("test1", "test2") -contains "TEST1" # True, incase sensitive
@("test1", "test2") -icontains "TEST1" # True, incase insensitive
@("test1", "test2") -ccontains "TEST2" # False, case insensitive
@("test1", "test2") -notcontains "TEST3" # True, incase sensitive

'Test' -eq 'test' # true, case sensitive
'Test' -ceq 'test' # false, case insensitive

$filePath = "C:\Users\User\Documents\Powershell Script\ifelse\text.txt"
Test-Path -Path $filePath # True if the file or directory exists, False otherwise

if (Test-Path -Path $filePath) {
    Write-Host "File exists."
} else {
    Write-Host "File does not exist."
}

if(Test-Path -Path $filePath){
    $Data = Get-Content -Path $filePath
    if($Data.Count -lt 2){
        Write-Output "File $filePath has less than 2 lines."
    }elseif($Data.Count -eq 2){
        Write-Output "File $filePath has exactly 2 lines."
    }else{
        Write-Output "File $filePath has more than 2 lines."
    }
}else{
    Write-Output "File $filePath does not exist."
}