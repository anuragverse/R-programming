#1. Creating an Array
arr1 <- array(1:24, dim = c(3, 4, 2))  # 3x4x2 array
print("Array arr1:")
print(arr1)

#2. Accessing Elements
print("Element at [2,3,1]:")
print(arr1[2, 3, 1])

#3. Sum of All Elements
sum_arr1 <- sum(arr1)
print("Sum of all elements in arr1:")
print(sum_arr1)

#5. Transposing a 2D Slice of an Array
transposed_slice <- t(arr1[,,1])  
print("Transposed first matrix slice:")
print(transposed_slice)

#6. Adding Two Arrays
arr2 <- array(25:48, dim = c(3, 4, 2))  # Another 3x4x2 array
sum_arr <- arr1 + arr2  # Element-wise addition
print("Sum of arr1 and arr2:")
print(sum_arr)