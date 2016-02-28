library(shiny)

shinyServer(function(input, output) {
    # retrieve the input of the feed type to review
    output$feedtype <- reactive({input$variable})
    
    # select only the weights for the selected feed type
    weights <- NULL
    weights <- reactive({chickwts[which(chickwts$feed == input$variable),]})

    # plot the weights for the feed type
    output$weightPlot <- renderPlot({
        plot(x=weights()$feed, y=weights()$weight, xlab = "Feed", ylab = "Weights")
    })
})
