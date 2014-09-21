library(shiny)

shinyUI(pageWithSidebar(
	headerPanel("MT Cars "),
	sidebarPanel(
		h3('Engine Details'),
		p('Enter values below'),

		numericInput('id1','Input Engine Power in hp: ',120,min=60,max=300,step=1),
		numericInput('id2','Input #of Gear: ',4,min=3,max=5,step=1)
		

	),

	mainPanel(
	   tabsetPanel(
	      tabPanel("Prediction of MPG",
		h3('MPG Prediction based on hp and #of gears'),
		

		h4("Your input for Engine Power and # of Gears is : "),

		verbatimTextOutput('oid1'),
		verbatimTextOutput('oid2'),


		br(),
		br(),		
		h4("MPG for the car for the input Engine Power and # of Gears is : "),
		verbatimTextOutput('oresult')
		),
	    tabPanel("Description",
		helpText("This sample app uses MT Cars data set."),
		br(),
		helpText("The app takes input values for Engine Power in hp and Number of Gears in the car and returns as output the predicted mileage in MPG."),
		helpText("Validd values of Engine Power are from 60hp to 300hp changing in steps of 1; default is set to 120hp."),
		helpText("Valid values for number of gears are only 3,4 and 5 gears."),
		br(),
		helpText("In case any invalid entry is input, the app still gives out some output based on the regression logic but the value may not have any practical significance. Further, the input box may get highlighted in red border indicating invalid input.")
		)
	  )
		
	)

))
