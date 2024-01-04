# Create an array of numbers
$numbers = 10, 20, 30, 40, 50


# Accessing array elements
$firstNumber = $numbers[0]
$secondNumber = $numbers[1]
Write-Host '1st Element of Array is='$firstNumber
Write-Host '2nd Element of Array is='$secondNumber

# Modifying array elements
$numbers[2] = 10
Write-Host 'Modified Array Element=' $numbers[2]

# Adding elements to an array
$numbers += 6
Write-Host 'Added Array Element='$numbers[0..6]

# Looping through an array
foreach ($number in $numbers) {
    Write-Host $number
}


#Arraylist
# Create an ArrayList
$fruits = New-Object System.Collections.ArrayList

# Add elements to the ArrayList
$fruits.Add("Apple")
$fruits.Add("Banana")
$fruits.Add("Orange")

# Accessing elements
$firstFruit = $fruits[0]
$secondFruit = $fruits[1]

Write-Host '1st Element of an Arraylist is='$firstFruit
Write-Host '1st Element of an Arraylist is='$secondFruit

# Modifying elements
$fruits[2] = "Mango"
Write-Host 'Modified item in an ArrayList='$fruits[2]

# Removing elements
$fruits.Remove("Banana")
Write-Host 'Removed item in  an ArrayList='$fruits[0..3]

# Looping through the ArrayList
foreach ($fruit in $fruits) {
    Write-Host $fruit
}