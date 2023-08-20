# Introduction

intro.menu <- menuItem(text = "Introduction", tabName = "intro")

intro.tab <- tabItem(tabName = "intro", 
                     h2("Introduction"),
                     p("Welcome!"),
                     p("This shiny wesbite shows how to modularize tabs in separate sections ('Module 1' & 'Module 2'), such that app.R looks clear and reader-friendly."),
                     p("Each module has its own folder and connections to app.R, therefore it allows users to work on separate R scripts for changes instead of doing so in app.R."),
                     verbatimTextOutput("code")
                     
)

intro.text <- function(input, output){
  output$code <- renderPrint({
    cat(as.character(parse(file = "app.R")), sep = "\n")
  })
}