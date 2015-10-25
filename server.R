
x<-sample(1:20,1)
library(shiny)
shinyServer(
  function(input, output) {
    output$num<-renderText({input$num})
    output$guess<-renderText({
      if(input$select==1){
        paste("The number is smaller then ",input$num)
      } else
        if(input$select==2){
          paste("The number is greater then ",input$num)
        } else
          paste("The number is ",input$num)
             })
    output$check<-renderText({
      if(input$select==1){
        ifelse(x < input$num,"That's true, go on.","That's not correct.")
      } else
        if(input$select==2){
          ifelse(x > input$num,"That's true, go on.","That's not correct.")
        } else
          ifelse(x==input$num,"Congratulations, you won.","Try again.")
    })
    output$docu<-renderPrint(
      "You need to find a randomly selected number between 1 and 20. You will need to click on Main tab to start after you read this documentation.
On the side bar panel you need to choose the option you are going to check. Then you need to enter a number. You will receive a message, if your guess is correct.
First you can check if the number is greater or smaller as you think and once you think you got the right number, you can choose the number is option.
The application is checking your choice (greater,smaller,equal) and based on that it is comparing the number you enter to the random number.
This random number is chosen when the application starts, so it does not change, till you are guessing, however when you close and start the application again, you get a new random number.
      Now click on Main tab, and start guessing the number."
          )
           }
)