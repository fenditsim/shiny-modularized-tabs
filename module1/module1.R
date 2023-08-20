# Module 1

# ui ----------------------------------------------------------------------

module1.menu <- menuItem(text = "Module 1", tabName = "module1")

module1.tab <- tabItem(tabName = "module1", h2("Module 1"),
                       p("This is Module 1."),
                       fluidRow(
                         box(plotOutput("plot1", height = 250))%>% withSpinner(color="#0dc5c1"),
                         box(title = "Controls", sliderInput("slider", "Number of observations:", 1, 100, 50))
                         )
                       )


# server ------------------------------------------------------------------

module1.plot1 <- function(input, output){
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}