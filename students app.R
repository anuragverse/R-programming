# Install and load necessary libraries
install.packages("shiny")
library(shiny)

# Sample student data for 8 Indian students and their marks in 5 engineering subjects
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
  titlePanel("Student Marks Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      # Select a subject for filtering the marks
      selectInput("subject_select", "Select Subject:",
                  choices = colnames(student_data)[3:7], selected = "Math")
    ),
    
    mainPanel(
      # Display the filtered data table
      tableOutput("filtered_table"),
      
      # Optionally, a bar plot for the selected subject's marks
      plotOutput("subject_plot")
    )
  )
)

# Define server logic for the app
server <- function(input, output) {
  
  # Reactive expression to filter the dataset based on the selected subject
  filtered_data <- reactive({
    student_data[, c("Name", input$subject_select)]
  })
  
  # Render the filtered table based on the selected subject
  output$filtered_table <- renderTable({
    filtered_data()
  })
  
  # Render a bar plot for the selected subject's marks
  output$subject_plot <- renderPlot({
    data <- student_data[, c("Name", input$subject_select)]
    barplot(data[[input$subject_select]], names.arg = data$Name, main = paste("Marks in", input$subject_select), 
            col = "skyblue", xlab = "Students", ylab = "Marks")
  })
}

# Run the Shiny app
shinyApp(ui = ui, server = server)
