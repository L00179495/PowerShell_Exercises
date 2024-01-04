#if statement:
$x = 5
#-gt operator is used to check if one value is greater than another value.
if ($x -gt 10) {
    # Code to be executed if $x is greater than 10
    Write-Host "x is greater than 10"
} else {
    # Code to be executed if $x is not greater than 10
    Write-Host "x is not greater than 10"
}

#elseif statement:
$x = 5

if ($x -lt 10) {
    # Code to be executed if $x is less than 10
    Write-Host "x is less than 10"
} elseif ($x -eq 5) {
    # Code to be executed if $x is equal to 5
    Write-Host "x is equal to 5"
} else {
    # Code to be executed if none of the conditions are met
    Write-Host "x is neither less than 10 nor equal to 5"
}


#switch:
$day = 2
switch ($day) {
    1 {
        # Code to be executed if $day is 1
        Write-Host "day is Monday"
    }
    2 {
        # Code to be executed if $day is 2
        Write-Host "day is Tuesday"
    }
    3 {
        # Code to be executed if $day is 3
        Write-Host "day is Wednesday"
    }
    default {
        # Code to be executed if none of the values match
        Write-Host "day is not 1, 2, or 3"
    }
}