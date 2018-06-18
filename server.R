server <- function(input, output) {
  source("global_data.R")

  ROOM=function(){input$room}
  KM=function(){input$km}
  FLOOR=function(){input$floor}
  TOWN=function(){c(input$town)}

  output$plot <- renderPlot({
    #dataforplot=data[data$town==TOWN(),]
    #dataforplot=aggregate(dataforplot,by=date, FUN=mean)
    plot(x=data$date,y=data$resale_price, type="l")
  })
}