install.packages("dplyr")
library(dplyr)
students <- data.frame(
  student_id = c(101, 102, 103, 104, 105, 105),
  name = c("Aryan", "Bhawna", "Chestha", "Deepti", "kavya", "Sanvi"),
  age = c(20, 21, 19, 22, 20, 20),
  marks = c(88, 95, 70, 85, 95, 95),
  grade = c("B", "A", "C", "B", "A", "A"),
  stringsAsFactors = FALSE
)

print("Original Data:")
print(students)