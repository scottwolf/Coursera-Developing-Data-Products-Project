library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel('Neuroticism Calculator'),
  
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
      
      submitButton('Submit'),
      h6('Scroll up to see your score in the other column.')
    ),
    mainPanel(
        h4('Your Neuroticism score is'),
        verbatimTextOutput("score"),
        h4('Scoring interpretation:'), 
        h6('LOW neuroticism: a score of less than 15.'),
        h6('AVERAGE neuroticism: a score of 15-30.'),
        h6('HIGH neuroticism: a score above 30.'),
        h4('Questionnaire Source:'),
        h6('Goldberg, Lewis R. "The development of markers for the Big-Five factor structure." Psychological assessment 4.1 (1992): 26.'),
        h4('What is Neuroticism?'),
        h6('The following excerpt is taken from the following source: https://en.wikipedia.org/wiki/Big_Five_personality_traits#Neuroticism'),
        h6("Neuroticism is the tendency to experience negative emotions, such as anger, anxiety, or depression.[44] It is sometimes called emotional instability, or is reversed and referred to as emotional stability. According to Eysenck's (1967) theory of personality, neuroticism is interlinked with low tolerance for stress or aversive stimuli.[45] Those who score high in neuroticism are emotionally reactive and vulnerable to stress. They are more likely to interpret ordinary situations as threatening, and minor frustrations as hopelessly difficult. Their negative emotional reactions tend to persist for unusually long periods of time, which means they are often in a bad mood. For instance, neuroticism is connected to a pessimistic approach toward work, confidence that work impedes personal relationships, and apparent anxiety linked with work.[46] Furthermore, those who score high on neuroticism may display more skin conductance reactivity than those who score low on neuroticism.[45][47] These problems in emotional regulation can diminish the ability of a person scoring high on neuroticism to think clearly, make decisions, and cope effectively with stress.[citation needed] Lacking contentment in one's life achievements can correlate with high neuroticism scores and increase one's likelihood of falling into clinical depression.[48] Moreover, individuals high on neuroticism tend to experience more negative life events.,[44][49] but neuroticism also changes in response to positive and negative life experiences.[44][49]")
    )
  )
)

