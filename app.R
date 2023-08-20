library(shiny)
library(shinydashboard)
library(dplyr)
library(shinycssloaders)

source("intro/intro.R")
source("module1/module1.R")
source("module2/module2.R")

SidebarMenu <- sidebarMenu(intro.menu, module1.menu, module2.menu)
TabItems <- tabItems(intro.tab, module1.tab, module2.tab)

ui <- dashboardPage(
  dashboardHeader(title = "Shiny Modules"),
  dashboardSidebar(collapsed = TRUE, SidebarMenu),
  dashboardBody(TabItems)
)

server <- function(input, output){
  intro.text(input, output)
  module1.plot1(input, output)
  module2.plot1(input, output)
}

shinyApp(ui, server)