library (shiny)
ui <- fluidPage(
  titlePanel("Web application"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "room",label = "Number of rooms",min = 1,max = 6,value = 2),
      img(scr = "1.jpg", height = 140, width = 400)
    ),
    mainPanel(
      
    )
  )
)