
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
  
  output$stats <- renderPrint({
    summary(rnorm(input$num))
  })
})