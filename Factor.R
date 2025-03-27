#1. Create a Factor
colors <- factor(c("Red", "Blue", "Green", "Red", "Blue", "Green"))
print(colors)

#2. Check Levels of a Factor
print(levels(colors))

#3. Change Levels of a Factor
levels(colors) <- c("R", "B", "G")
print(colors)

#4. Add a New Level to a Factor
colors <- factor(colors, levels = c("R", "B", "G", "Yellow"))
print(levels(colors))

#5. Reorder Factor Levels
colors <- factor(colors, levels = c("G", "B", "R", "Yellow"))
print(colors)

#6. Convert Factor to Numeric
numeric_values <- as.numeric(colors)
print(numeric_values)