#1

x <- 1:5
y <- LETTERS[1:5] 
z <- c("Arjun", "Anurag", "Akshat", "Deepak", "Raju") 
# Create data frame of vectors 
df <- data.frame(x, y, z) 
# Print data frame 
print(df) 

#2

names <- c("Rajesh", "Priya", "Amit", "Anjali", "Vikram")
ages <- c(30, 28, 32, 26, 35)
genders <- c("Male", "Female", "Male", "Female", "Male")
cities <- c("Mumbai", "Delhi", "Bangalore", "Chennai", "Hyderabad")

df <- data.frame(Name = names, Age = ages, Gender = genders, City = cities)

print(df)
