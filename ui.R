library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Demonstrating the Central Limit Theorem via a Binomial Distribution"),
    
    sidebarLayout(
        
        sidebarPanel(
            sliderInput("nsamples", "Number of samples:", min=1, max=500, value=250),
            sliderInput("obs", "Number of observations per sample:", min=1, max=500, value=250),
            sliderInput("p", "Probability of occurence:", min=0, max=1, value=0.5)
        ),
        
        mainPanel(
            tabsetPanel(
                tabPanel("Plot", plotOutput("histplot")),
                tabPanel("Documentation", 
                         "This application allows you to explore the Central Limit Theorem. 
                         A binomial distribution features two outcomes (e.g. success and failure), where 
                         the rate of success is denoted as 'p', which you may specify. The number of times
                         successes and failure are evaluated in a sample depends on the number of observations
                         per sample. For example, if you choose number of samples = 10, number of 
                         observations per sampe = 30, and probability of occurence = 0.3, the program will
                         draw 10 samples, with each sample containing 30 observations. Each observation has a 
                         0.3 chance of being a 'success'. The Central Limit Theorem states that, given 
                         certain conditions, the mean of a large number of independent random draws of a 
                         distribution will be approximately normally distributed. As the number of samples 
                         you choose increases, the histogram will appear more normally distributed.")
            )
        )
        
    )
    
))