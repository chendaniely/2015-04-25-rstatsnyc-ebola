library(shiny)

# shiny layout templates can be found here:
## Basic layouts: http://shiny.rstudio.com/articles/layout-guide.html
## More advanced layouts using shinydashboard: http://rstudio.github.io/shinydashboard/index.html

# this example uses the simpliest sidebar layout

# to specify the UI part of the app we need to call the shinyUI function
# this creates a Shiny UI handler

# on the server side we only need a shinyServer call that takes a function

# shinyUI(ui)
# ui    A user interace definition
shinyUI(
    # within the shinyUI function the first parameter is the UI
    # we are using the fluidPage UI
    # fluid refers to a 'reactive' layout, 'reactive' in a web UI sense, not
    # reactive in the shiny variable sense
    fluidPage(
        # each part of the fluid page is a shiny function
        # each function is separated with a comma

        # give our app a title
        titlePanel("woo... shiny..."),

        # next lets give our app the simple sidebar layout
        # it has a pannel on the left (or right) side and results/plots as the main body of the page
        # the side pannel will contain all our interactive widgets
        # each part of the sidebar layout is separated by a comma
        sidebarLayout(
            position = "right",
            sidebarPanel("sidebar panel",
                         # html tags are now functions
                         h2("Installation"),
                         p("Shiny is awesome, and really easy to learn.  You can install it using:"),
                         code('install.packages("shiny")'),

                         # shiny widgets can be entered here
                         actionButton("42button", label = "42"),
                         br(),
                         sliderInput("slider1", label = h3("Sliders"),
                                     min = 0, max = 100, value = 50),
                         checkboxGroupInput("checkGroup",
                                            label = h3("Checkbox group"),
                                            choices = list("Choice 1" = 1,
                                                           "Choice 2" = 2, "Choice 3" = 3),
                                            selected = 1)
            ),
            # with a sidebar we also have to have a main panel
            mainPanel("main panel",
                      h1("First level title", align = "center"),
                      h2("Second level title"),
                      h3("Third level title"),
                      h4("Fourth level title"),
                      h5("Fifth level title"),
                      h6("sixth level title", align = "right"),
                      "the quick brown fox jumps over the lazy dog.",
                      p("p creates a paragraph of text.Note: this paragraph is followed by br(), which makes a blank line."),
                      p("A new p() command starts a new paragraph. Supply a style attribute to change the format of the entire paragraph", style = "font-family: 'times'; font-si16pt"),
                      strong("strong() makes bold text."),
                      em("em() creates italicized (i.e, emphasized) text."),
                      br(),
                      code("code displays your text similar to computer code"),
                      div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
                      br(),
                      p("span does the same thing as div, but it works with",
                        span("groups of words", style = "color:blue"),
                        "that appear inside a paragraph."),

                      img(src = "curiosity-panorama.jpg", width = 400),
                      br(),
                      "while you're at it, check out my",
                      a("blog", href = "http://chendaniely.github.io/")
            )
        )
    )
)
