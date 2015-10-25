---
title       : Guess the number
subtitle    : Shiny application
author      : Zuzana Kalmarova
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Idea and purpose

- __Idea:__

 - To create a very simple application
 
 - An application different from the samples available on the web
 
 - A small game some can remember from their childhood
 
 - It's intuitive, easy to use and understand
 

- __Purpose of creating the application:__

 - To learn how shiny works
 
 - To try out basic capabilities
 

--- .class #id 

## Description of the application

- It's a small game to guess a random number between 1 and 20

- It has two widgets on the sidebar panel:

  * selection from a drop down list
  
  * input field to enter a number
  
- The main panel consists of two tabs:

  * Documentation tab describes the application, how to use it
  
  * the reaction is happening on Main tab:
  
      + it shows what option was selected and what number was entered
    
      + it gives a response if the guess was correct
  
 

--- .class #id 

## How it works

- When the application starts, there is a random number selected


```r
x<-sample(1:20,1)
x
```

```
## [1] 19
```

- Of course this number is not visible in the application

- This number is defined outside the shinyserver function, thus it remains the same while the application is running

- First there is a selection needed from 3 possibilities
  - is the number smaller then
  - is the number greater then
  - is the number (meaning equal)


--- .class #id 

## How it works (cont)

- Then a number should be entered into the input field

- The application will print what option and number was selected

- Then it compares to the random number defined and gives a message if the guess was correct

- E.g. if option 1 (the number is smaller then) and number 15 is selected, the code inside the shinyServer function gets evaluated and the following will be printed


```
## [1] "The number is smaller then  15"
```

```
## [1] "That's not correct."
```

- Then another guess can be made till the right number is found



