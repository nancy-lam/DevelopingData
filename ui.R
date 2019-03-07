
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
   # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput(inputId = 'num',
                   label = 'Choose a number',
                   value = 30, min = 1, max = 100)
       
                  
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("hist"),
       verbatimTextOutput('stats')
    )
  )
))
