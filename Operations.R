getwd()
my_data <- read.csv("C:/Users/student/Downloads/titanic.csv")
head(my_data)

#1. distinct():
distinct_data <- distinct(head(my_data))
print("Distinct Data (Duplicate Rows Removed):")
print(distinct_data)

#2. filter():
filtered_data <- filter(head(my_data), Fare >= 100)
print("Filtered Passengers (Fare >= 100):")
print(filtered_data)

#3. arrange():
arranged_data <- arrange(head(my_data), desc(Fare))
print("Passengers Arranged by Fare (Descending):")
print(arranged_data)

#4. select():
selected_data <- select(head(my_data), PassengerId, Name, Age, Fare)
print("Selected Columns (PassengerId, Name, Age, Fare):")
print(selected_data)


#5.rename(): 
renamed_data <- rename(head(my_data), Ticket_Price = Fare)
print("Renamed Data (Fare -> Ticket_Price):")
print(renamed_data)

#6. mutate():
mutated_data <- mutate(head(my_data), Expensive = Fare >= 50)
print("Mutated Data (New 'Expensive' Column Added):")
print(mutated_data)

#7. transmute(): 
transmuted_data <- transmute(head(my_data), Name, Age_Group = ifelse(Age < 18, "Child", "Adult"))
print("Transmuted Data (Only Name and Age_Group):")
print(transmuted_data)


#8. summarize():
summary_data <- summarize(head(my_data), avg_fare = mean(Fare, na.rm = TRUE), total_passengers = n())
print("Summary Statistics (Average Fare & Total Passengers):")
print(summary_data)



