library(shiny)

shinyUI(fluidPage(
    titlePanel("Plotting Ebola"),
    sidebarLayout(
        sidebarPanel("Interactive plot components",
                     uiOutput("countriesList"),
                     radioButtons(inputId = "date_offset",
                                  label = "Date range:",
                                  choices = c("Relative"="relative", "Absolute"="absolute")),
                     checkboxInput(inputId = "log",
                                   label = "Plot y-axis on log scale")
        ),
        mainPanel(p("This graphs the cases and deaths of each country and
                    normalizes the onset dates all to '0' so countries can be compared"),
                  "Data was all taken from Caitlin River's 'ebola' repository",
                  a('here', href = 'https://github.com/cmrivers/ebola'),

                  plotOutput("plot")
        )
    )
))
