#resistance/inst/shiny/simpfitvis/server.r
#andy south 13/7/16


library(shiny)
#library(devtools)
#install_github('AndySouth/resistance')
library(resistance)


shinyServer(function(input, output, session) {


  ################################
  output$plotA <- renderPlot({

        fitnessSingleLocus( eff1 = input$effectiveness_A1,
                            eff2 = input$effectiveness_A2,
                            dom1 = input$dominance_A1,
                            dom2 = input$dominance_A2,
                            rr_1 = input$advantage_A1,
                            rr_2 = input$advantage_A2,
                            cost1 = input$cost_A1,
                            cost2 = input$cost_A2,                            
                            plot = TRUE)
    
  })

  ################################
  output$plotB <- renderPlot({
    
    fitnessGenotype( eff1 = input$effectiveness_A1,
                     eff2 = input$effectiveness_A2,
                     dom1 = input$dominance_A1,
                     dom2 = input$dominance_A2,
                     rr_1 = input$advantage_A1,
                     rr_2 = input$advantage_A2,
                     cost1 = input$cost_A1,
                     cost2 = input$cost_A2, 
                     exp1 = input$exposure_A1,
                     exp2 = input$exposure_A2,                     
                     plot = TRUE)
    
  })  


})
