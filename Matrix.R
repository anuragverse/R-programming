#1. Creating Matrices
A <- matrix(1:9, nrow=3, ncol=3)  
B <- matrix(9:1, nrow=3, ncol=3, byrow=TRUE)  
print("Matrix A:")
print(A)
print("Matrix B:")
print(B)

#2. Addition & Subtraction
C <- A + B
D <- A - B
print("A + B:")
print(C)
print("A - B:")
print(D)

#3. Matrix Multiplication
E <- A %*% B
print("A %*% B:")
print(E)

#4. Element-wise Multiplication & Division
F <- A * B
G <- A / B
print("Element-wise A * B:")
print(F)
print("Element-wise A / B:")
print(G)

#5. Transpose
T_A <- t(A)
print("Transpose of A:")
print(T_A)

#6. Determinant
if (det(A) != 0) {
  det_A <- det(A)
  print("Determinant of A:")
  print(det_A)
} else {
  print("Matrix A is singular, determinant is zero.")
}

#7. Inverse
if (det(A) != 0) {
  inv_A <- solve(A)
  print("Inverse of A:")
  print(inv_A)
} else {
  print("Matrix A has no inverse (singular matrix).")
}


#8. Diagonal Elements & Trace
diag_A <- diag(A)
trace_A <- sum(diag_A)
print("Diagonal elements of A:")
print(diag_A)
print("Trace of A:")
print(trace_A)

#9. Identity Matrix
I3 <- diag(3)
print("3x3 Identity Matrix:")
print(I3)

#10. Row and Column Binding
C <- matrix(10:18, nrow=3, ncol=3)
row_bind <- rbind(A, C)
col_bind <- cbind(A, C)
print("Row-wise binding of A and C:")
print(row_bind)
print("Column-wise binding of A and C:")
print(col_bind)

#11. Matrix Rank
library(Matrix)
rank_A <- qr(A)$rank
print("Rank of A:")
print(rank_A)