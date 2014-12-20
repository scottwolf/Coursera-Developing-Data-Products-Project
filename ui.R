library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel('Neuroticism Calculator (Big 5 personality inventory)'),
  
    sidebarPanel(
            h5('Please answer the following questions using the following scale.'),
            h6('1=Strongly Disagree'),
            h6('2=Disagree'),
            h6('3=Neutral'),
            h6('4=Agree'),
            h6('5=Strongly Agree'),
            h5('When finished, click "Submit"'),
      sliderInput('N1', 'I get stressed out easily.', 3, min = 1, max = 5, step = 1),
      sliderInput('N2', 'I am relaxed most of the time.', 3, min = 1, max = 5, step = 1),
      sliderInput('N3', 'I worry about things.', 3, min = 1, max = 5, step = 1),
      sliderInput('N4', 'I seldom feel blue.', 3, min = 1, max = 5, step = 1),
      sliderInput('N5', 'I am easily disturbed.', 3, min = 1, max = 5, step = 1),
      sliderInput('N6', 'I get upset easily.', 3, min = 1, max = 5, step = 1),
      sliderInput('N7', 'I change my mood a lot.', 3, min = 1, max = 5, step = 1),
      sliderInput('N8', 'I have frequent mood swings.', 3, min = 1, max = 5, step = 1),
      sliderInput('N9', 'I get irritated easily', 3, min = 1, max = 5, step = 1),
      sliderInput('N10', 'I often feel blue.', 3, min = 1, max = 5, step = 1),
      
      submitButton('Submit')
    ),
    mainPanel(
        h4('Your Neuroticism score is'),
        verbatimTextOutput("score")
    )
  )
)

