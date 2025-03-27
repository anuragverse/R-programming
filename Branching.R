num <- 50
print("If-Else Example:")
if (num > 0) {
  print("Number is positive")
} else if (num < 0) {
  print("Number is negative")
} else {
  print("Number is zero")
}

# Example with a user-defined function
check_even_odd <- function(n) {
  if (n %% 2 == 0) {
    return("Even Number")
  } else {
    return("Odd Number")
  }
}

print(check_even_odd(10))  # Output: Even Number
print(check_even_odd(7))   # Output: Odd Number


