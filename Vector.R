student_names <- c("Anurag", "Akshat", "Ayusman", "Drishti", "Preet")
print("Student Names:")
print(student_names)
print(paste("Type of student_names:", typeof(student_names)))


student_marks <- c(85.5, 90.0, 76.5, 88.0, 92.5)
print("Student Marks:")
print(student_marks)
print(paste("Type of student_marks:", typeof(student_marks)))

roll_numbers <- c(101L, 102L, 103L, 104L, 105L)
print("Roll Numbers:")
print(roll_numbers)
print(paste("Type of roll_numbers:", typeof(roll_numbers)))

pass_status <- student_marks >= 80  # TRUE for pass, FALSE for fail
print("Pass Status:")
print(pass_status)
print(paste("Type of pass_status:", typeof(pass_status)))

grades <- factor(c("A", "A+", "B", "A", "A+"), levels = c("B", "A", "A+"), ordered = TRUE)
print("Student Grades:")
print(grades)
print(paste("Type of grades:", typeof(grades)))  

complex_values <- c(3+4i, 2+3i, 5+2i, 4+4i, 1+1i)
print("Complex Values:")
print(complex_values)
print(paste("Type of complex_values:", typeof(complex_values)))

roll_sequence <- seq(101, 105, by = 1)
print("Roll Number Sequence:")
print(roll_sequence)
print(paste("Type of roll_sequence:", typeof(roll_sequence)))

repeated_names <- rep(student_names, times = 2)  # Repeat each name twice
print("Repeated Names:")
print(repeated_names)
print(paste("Type of repeated_names:", typeof(repeated_names)))