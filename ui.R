library(shiny)

shinyUI(pageWithSidebar(
    
    headerPanel("Chick weights by feed type"),
    
    # prepare select box for input
    sidebarPanel(
        p("To use the app, simply select the feed type below to view weight data associated with it."),
        selectInput("variable", "Feed Type:",
            list("casein", "horsebean", "linseed", "meatmeal", "soybean", "sunflower"))
    ),
    
    # Show dynamic plot of selected feed and mean weight of chicks in dataset
    mainPanel(
        h3(textOutput("feedtype")),
        
        plotOutput("weightPlot")
    )
))
