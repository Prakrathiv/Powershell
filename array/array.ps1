$myArray = @("test1", "test2", "test3")
$myArray.Count
$myArray.Length
$myArray.IsFixedSize # True
$myArray.GetType() # System.Object[]
# Add an item to the array
$myArray = $myArray + "test4"
$myArray
$myArray += "test5"
$myArray
# Remove an item from the array
$myArray = $myArray  -ne "test2" 
$myArray
# Array list
$myArrayList = New-Object System.Collections.ArrayList
$myArrayList.GetType() # System.Collections.ArrayList
 $myArrayList.IsFixedSize # False

$myArrayList.Add("Item1") # return the index where the item was added
[void]$myArrayList.Add("Item2") # gives empty output


$myArrayList.AddRange(@("Item3", "Item4"))
$myArrayList[1] # Item2
$myArrayList

$myArrayList.Remove("Item2") # True ,it will removwe only first occurrence
$myArrayList.Remove("Item5") # False
$myArrayList

$myArrayList.RemoveAt(0) # Remove item at index 0
$myArrayList

$myArrayList.RemoveRange(0,2) # Remove 2 items starting from index 0
$myArrayList

#adv CMdlet
$array = @()
Measure-Command -Expression{@(0..5000000).ForEach({$array += $_})}

$arraylist = New-Object -TypeName System.Collections.ArrayList
 Measure-Command -Expression{@(0..5000000).ForEach({$arraylist.Add($_)})}

$arraylist = New-Object -TypeName System.Collections.ArrayList
Measure-Command -Expression{ $arraylist.AddRange(@(0..5000000))}
