##############################################################################
#
# This block of code will run when the application launches
# It will one once.
# Useful for loading/downloading data so any reactive parts will not cause
# a re-downloading of data or re-loading of data
#
###############################################################################

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    ###########################################################################
    #
    # This block of code will run when a user visits the application
    #
    ###########################################################################

    # Expression that generates a histogram. The expression is
    # wrapped in a call to renderPlot to indicate that:
    #
    #  1) It is "reactive" and therefore should re-execute automatically
    #     when inputs change
    #  2) Its output type is a plot

    output$distPlot <- renderPlot({
        #######################################################################
        #
        # Any render and ractive call will run when there is a change to a widget
        # that is mapped to an output
        #
        #######################################################################
        # get second column, time you had to wait
        x    <- faithful[, 2]  # Old Faithful Geyser data
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        # histogram of how long you have to wait for next eruption
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
})

# running a shiny app:
# shiny::runApp("my_app")

# runApp(appDir = getwd(), port = NULL,
# launch.browser = getOption("shiny.launch.browser", interactive()),
# host = getOption("shiny.host", "127.0.0.1"), workerId = "",
# quiet = FALSE, display.mode = c("auto", "normal", "showcase"))
