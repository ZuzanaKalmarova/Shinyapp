library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Guess the number"),
  sidebarPanel(
    selectInput("select", label = "Select the case", 
                choices = list("Is the number smaller then" = 1, 
                               "Is the number greater then" = 2, 
                               "Is the number" = 3), 
                selected = 1),
    textInput("num", label = NULL)
             ),
  mainPanel(
    tabsetPanel(type="tabs",
      tabPanel("Documentation",verbatimTextOutput("docu")),
      tabPanel("Main",
        strong(p("Your guess was")),
        em(textOutput("guess")),
        h3(textOutput("check"))
      )
    )
  )
))
