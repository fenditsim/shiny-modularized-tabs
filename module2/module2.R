# Module 2

# ui ----------------------------------------------------------------------

module2.menu <- menuItem(text = "Module 2", tabName = "module2")

module2.tab <- tabItem(tabName = "module2", h2("Module 2"),
                       p("This is Module 2."),
                       fluidRow(
                         box(sliderInput("bins", "Number of bins:", min = 1, max = 50, value = 30)),
                         box(plotOutput("plot2"))%>% withSpinner(color="#0dc5c1")
                         )
                       )


# server ------------------------------------------------------------------

module2.plot1 <- function(input, output){
  output$plot2 <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white',
         xlab = 'Waiting time to next eruption (in mins)',
         main = 'Histogram of waiting times')
  })
}