library(shiny)

big5neuro <- function(N1, N2, N3, N4, N5, N6, N7, N8, N9, N10) {
        N1 - N2 + N3 - N4 + N5 +N6 + N7 + N8 + N9 + N10
}

shinyServer(
  function(input, output) {
    output$score <- renderPrint({big5neuro(input$N1, input$N2, input$N3, input$N4,
                                           input$N5, input$N6, input$N7, input$N8,
                                           input$N9, input$N10)})
    })
