library (shiny)
ui <- fluidPage(
  theme = "1.css",
  titlePanel("Web application"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "room",label = "Number of rooms",min = 1,max = 6,value = 2),
      sliderInput(inputId = "km",label = "Permissible distance from city center",min = 1,max = 20,value = 15,step = 0.1),
      sliderInput(inputId = "floor",label = "Number of stories in the building",min = 1,max = 20,value = 9,step = 1),
      selectInput("Town", h3("Town"), choices = town_list , selected = 1),
      column(12,h3("Calculate the approximate cost"),actionButton("Calculate", "Calculate"),br())
    ),
    mainPanel(
      navbarPage(title = "", id="Main",
        tabPanel(
          title="Start",
          img(src = "1.jpg", height = 512, width = 1024)       
        ),
        tabPanel(
          title="Statistical inference",
          plotOutput("plot")
        ),
        tabPanel(
          title="Account"
        )
      )
    )
  )
)