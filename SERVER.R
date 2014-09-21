library(shiny)
library(datasets)

data(mtcars)


shinyServer(
	function(input, output) {

		o.result <- reactive({			
		i.hp <- as.numeric(input$id1)
		i.gear <- as.numeric(input$id2)

		model <- lm(mpg ~ hp + gear, data = mtcars)
		coeff <- model$coefficients
			
		result <- coeff[1] + i.hp*coeff[2] + i.gear*coeff[3]	
		as.numeric(result)

		
		})

		
		output$oid1 <- renderText({input$id1})
		output$oid2 <- renderText({input$id2})
		
		output$oresult <- renderText({o.result()})
	
	}

	
)
