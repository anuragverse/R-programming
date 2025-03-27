install.packages("stringr")  # Install if not already installed
library(stringr)
#Create Sample Student Data
students <- data.frame(
  Name = c("Arjun", "Harshit", "Kavya Kaushik", "Davik"),
  Email = c("arjunrathi@email.com", "harshitsmith@email.com", "kavyakaushik@email.com", "davik@email.com"),
  ID = c("S101", "S102", "S103", "S104"),
  stringsAsFactors = FALSE
)
#Perform stringr operations
students$Name <- str_to_upper(students$Name)  # Convert Names to Uppercase
students$First_Name <- word(students$Name, 1)       # Extract First Names
students$Last_Name <- word(students$Name, -1)       # Extract Last Names
students$Email <- str_extract(students$Email, "(?<=@)[^.]+")  # Extract Email Domain
students$Has_Number <- str_detect(students$Email, "\\d")  # Check if Email Contains a Number
students$Email <- str_replace(students$Email, "@email.com", "@university.edu")  # Replace Email Domain
# Print the Updated Data
print(students)