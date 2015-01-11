library(shiny)

shinyServer(
    
    function(input, output) {
        
        output$histplot <- renderPlot({
            nsamples <- input$nsamples # obtain number of samples from ui.R 
            obs <- input$obs # obtain number of obs from ui.R
            p <- input$p # obtain p from ui.R
            set.seed(123) # set seed for reproducibility
            data <- replicate(nsamples, rbinom(1, obs, p)) # generate data
            hist(data) # plot histogram
        })
        
    }
    
)