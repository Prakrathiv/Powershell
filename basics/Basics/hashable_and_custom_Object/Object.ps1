$myHashTable = @{
    key1 = 100
    apple = 2.34
    name = 'John Doe'
    key3 = $true 
}
# unordered collection of list of key value pairs like sets

$myHashTable.GetType() # System.Collections.Hashtable
#properties
$myHashTable.IsReadOnly # False
$myHashTable.Count # 4
$myHashTable.Keys # key1, apple, name, key3
$myHashTable.Values # 100, 2.34, John Doe, True


# 2 different ways to access the values
$myHashTable['key1'] # 100
$myHashTable.apple # 2.34

# if there is no key, it will return null (no error) even if we use strict mode
$myHashTable['unknownKey'] # null
$myHashTable.unknownKey # null  

# to know if the key exists or not use ContainsKey method
$myHashTable.ContainsKey('name') # True
$myHashTable.ContainsValue(2.3) # False

# 2 way to Add a new key value pair
$myHashTable['newKey'] = 'newValue' # if the key exists, it will update the value
$myHashTable.newKey = 'newValue2' 
$myHashTable
$myHashTable.Add('anotherKey', 1234) # if the key exists, it will throw an error
$myHashTable
$myHashTable.Add('key1', 'value1') # error bcz it is existed

#change the value of an existing key
$myHashTable['key1'] = 200 # update the value of key1
$myHashTable.key3 = $false 
$myHashTable

# Remove a key value pair
$myHashTable.Remove('apple') # True
$myHashTable.Remove('unknownKey') # False
$myHashTable

# clear all the key value pairs
$myHashTable.Clear()
$myHashTable.Count # 0
$myHashTable

#########################

# 2 type of Custom Object
$Employee1 = New-Object -TypeName PSCustomObject
$Employee1 | Add-Member -MemberType NoteProperty -Name ID -Value 1
$Employee1 | Add-Member -MemberType NoteProperty -Name Name -Value 'John Doe'
$Employee1 | Add-Member -MemberType NoteProperty -Name Age -Value 28
$Employee1.name # John Doe
Get-Member -InputObject $Employee1

#casting hashtable to PSCustomObject
$Employee2 = [PSCustomObject]@{
    ID = 2
    Name = 'Jane Smith'
    Age = 32
}  
$Employee2.name # Jane Smith

