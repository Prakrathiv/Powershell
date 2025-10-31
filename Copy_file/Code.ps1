$source = "C:\"
$destination = "D:\Backup\"

if (-not(Test Path $destination)){
    New-Item  -Path $destination -ItemType Directory
}

Copy-Item -Path "$source\*" -Destination $destination -Recurse -Force
