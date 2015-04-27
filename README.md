# 2015-04-25-rstatsnyc-ebola

[![DOI](https://zenodo.org/badge/11594/chendaniely/2015-04-25-rstatsnyc-ebola.svg)](#DOI)

This is my presentation for the inaugural [NYC R Conference](http://www.rstats.nyc/).

Ebola dataset and images were taken from Caitlin Rivers' repo: https://github.com/cmrivers/ebola

Checkout the awesome rstudio shiny [tutorial](http://shiny.rstudio.com/tutorial/) afterwards!
There is a [gallery](http://shiny.rstudio.com/gallery/) with a bunch of example code, and [artiles](http://shiny.rstudio.com/articles/) to bring your shiny app to the next level.

Hope this gets everyone started in the right direction!

# Topics In this repository

1. [Knitr](http://yihui.name/knitr/) and [rmarkdown](http://rmarkdown.rstudio.com/) primer
2. Basic [ebola](https://github.com/chendaniely/ebola/tree/dev-dan-shiny/data_products/shinyCountryTimeseries) plot
3. Interactive Shiny (did not cover this due to time) [documents](http://rmarkdown.rstudio.com/authoring_shiny.html)
4. Interactive Shiny [app](http://shiny.rstudio.com/)

# How to download and get the files
There are 2 ways you can get the files

1. If you know your way around github you can clone this repository.
2. You can click the "Download Zip" button to the right and unzip all the files on to your computer.

The Material used for the talk are in the `src` folder.  They are numbered so you can go through them the exact same way I did during the talk.

# How to view/render the files

To render or run everything: The simplest way is to open the `.Rmd` files and click `knit html` and have the presentation and rmarkdown documents render for you.
If you want to run the shiny app.  You have to open the `ui.R` and `server.R` files in rstudio, then you will have a `run app` button to click.

If you want, the `.html` files in the various subfolder under `src/` can be viewed directly so you do not have to render them in r/rstudio to go through the slides

## Viewing order
I would suggest looking and/or reading through the Shiny document before going to the Shiny App.  I was running out of time during the presentation so I had to skip the Shiny Document part.  What's nice about the Shiny Document is that you do not need to work with 2 files (server.R and ui.R) and everything can be done in a single document.

If the instructions are unclear send me an issue on the top right panel.
