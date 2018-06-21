

# Pick meals for 1 week timeframe
setwd("./Documents/R/MealPlanner/")
meals <- read.csv("./ListOfMeals.csv",stringsAsFactors = FALSE)


mealPicker <- function() {
number=7
dinner <- meals[meals$Type=="dinner" ,]$Meal
lunch  <- meals[meals$Type=="lunch" ,]$Meal
snack  <- meals[meals$Type=="snack" ,]$Meal
breakfast <- meals[meals$Type=="breakfast" ,]$Meal

daynames <- c("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
myMeals <- data.frame ( 
  breakfast = sample(x=breakfast,size = number) ,
  lunch = sample(x=lunch,size = number) ,
  dinner = sample(x=dinner,size = number),
  snack = sample(x=snack,size = number),
  row.names = daynames 
)
return(myMeals)
}

mealPicker()
