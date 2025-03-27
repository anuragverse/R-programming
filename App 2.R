# Install and load necessary libraries
install.packages("shiny")
library(shiny)

# Sample student data for 8 students and their marks in 5 engineering subjects
student_data <- data.frame(
  Student_ID = 1:8,
  Name = c("Aarav", "Ishita", "Rohan", "Sneha", "Arjun", "Priya", "Vikram", "Ananya"),
  Math = c(85, 92, 78, 88, 95, 80, 89, 91),
  Physics = c(90, 85, 88, 92, 91, 76, 84, 89),
  Chemistry = c(78, 82, 85, 90, 88, 81, 80, 87),
  Mechanical_Engineering = c(92, 86, 89, 94, 90, 83, 85, 88),
  Electrical_Engineering = c(88, 91, 84, 87, 93, 78, 86, 92)
)

# Define UI for the app
ui <- fluidPage(
  titlePanel("Interactive Scatterplot Generator"),
  
  sidebarLayout(
    sidebarPanel(
      # Select X-axis variable for the scatterplot
      selectInput("xvar", "Select X-axis variable:",
                  choices = colnames(student_data)[3:7], selected = "Math"),
      
      # Select Y-axis variable for the scatterplot
      selectInput("yvar", "Select Y-axis variable:",
                  choices = colnames(student_data)[3:7], selected = "Physics")
    ),
    
    mainPanel(
      # Display the dynamic scatterplot
      plotOutput("scatterplot")
    )
  )
)

# Define server logic for the app
server <- function(input, output) {
  
  # Reactive expression to generate the scatterplot based on user input
  output$scatterplot <- renderPlot({
    # Get the selected variables for X and Y
    x <- student_data[[input$xvar]]
    y <- student_data[[input$yvar]]
    
    # Generate the scatterplot
    plot(x, y, main = paste(input$xvar, "vs", input$yvar),
         xlab = input$xvar, ylab = input$yvar, pch = 19, col = "blue")
  })
}

# Run the Shiny app
shinyApp(ui = ui, server = server)
