# This is the UI definition of a Shiny web application. You can
# run the application by clicking 'Run App'.
#


#Loading Shiny package
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Diamond price prediction"),
    
    # Sidebar with options selectors 
    sidebarLayout(
        sidebarPanel(
            helpText("This application predicts the price of a diamond based on its characteristics."),
            h3(helpText("Select:")),
            numericInput("car", label = h4("Carats"), step = 0.01, value = 2),
            selectInput("cut", label = h4("Cut"), 
                        choices = list("Unknown" = "*", "Fair" = "Fair", "Good" = "^Good",
                                       "Very Good" = "Very Good", "Premium" = "Premium",
                                       "Ideal" = "Ideal")),
            selectInput("col", label = h4("Color"), 
                        choices = list("Unknown" = "*", "D" = "D", "E" = "E",
                                       "F" = "F", "G" ="G",
                                       "H" = "H", "I" = "I",
                                       "J" = "J")),
            selectInput("clar", label = h4("Clarity"), 
                        choices = list("Unknown" = "*", "I1" = "I1", "SI2" = "SI2",
                                       "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1",
                                       "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF" )),
            submitButton("Submit")
        ),
        
        # Show a plot with diamonds and regression line
        mainPanel(
            tabsetPanel(type= "tabs",
                        tabPanel("Plot", br(), plotOutput("distPlot")),
                        tabPanel("Predicted Value", h4("Predicted Value of the diamond is:"), textOutput("result")),
                        tabPanel("Help", h4("Please copy and paste the below link in your browser to understand more about the application http://rpubs.com/AshishVeera/335490"))
                        )
            
        )
    )
))
