library(shiny)
library(rgl)
library(shinyRGL)

shinyUI(fluidPage(
  titlePanel("Gradientes de selección cuadrática"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("g1", label = "gamma 1", min= -0.9, max=1, value = 0, step = 0.1),
      sliderInput("g2", label = "gamma 2", min= -0.9, max=1, value = 0, step = 0.1), 
      sliderInput("g3", label = "gamma 3", min= -0.9, max=1, value = 0, step = 0.1),  
      width=3),
    
    mainPanel(
      webGLOutput("pob1"), width=7)
  )
)
)