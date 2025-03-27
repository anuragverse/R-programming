#Practical Implementations in R

#1 Finding Words Using grep() and grepl()

text <- c("apple", "banana", "cherry", "grape", "mango")
grep("a", text)  # Finds indices of words containing 'a'
grepl("a", text)  # Returns TRUE/FALSE for each word

#2 Replacing Words Using sub() and gsub()

text <- "The quick brown fox jumps over the lazy dog"
sub("fox", "cat", text)   # Replaces first occurrence
gsub(" ", "-", text)      # Replaces all spaces with '-'

#3 Extracting Patterns Using regexpr() and gregexpr()

text <- "My phone number is 9876543210 and 1234567890"
regexpr("\\d{10}", text)       # Finds first 10-digit number
gregexpr("\\d{10}", text)      # Finds all 10-digit numbers

#4 Using stringr for Extracting and Manipulating Strings

library(stringr)

text <- "My email is example@mail.com and my website is www.example.com"
str_extract(text, "\\w+@\\w+\\.\\w+")   # Extracts first email
str_extract_all(text, "www\\.\\w+\\.\\w+")  # Extracts website

