library(shiny)

# Define UI for dataset viewer application
fluidPage(
  
  # Application title
  titlePanel("老子的第一个小程序"),
  
  # Sidebar with controls to select a dataset and specify the
  # number of observations to view
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "选择一个数据集:", 
                  choices = c("rock", "pressure", "cars")),
      
      numericInput("obs", "Number of observations to view:", 10)
    ),
    
    # Show a summary of the dataset and an HTML table with the 
    # requested number of observations
    mainPanel(
      verbatimTextOutput("summary"),
      
      tableOutput("view")
    )
  )
)
