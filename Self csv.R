# Load the readr package
library(readr)


student_data <- data.frame(
  ID = 1:5,
  Name = c("Akshat", "Anurag", "Arav", "Dhruv", "lee"),
  Age = c(18, 31, 29, 26, 20),
  Score = c(85, 92, 78, 88, 95)
)

write_csv(student_data, "student_data.csv")

print("CSV file 'student_data.csv' has been created.")
student_data <- read_csv("student_data.csv")

print(student_data)