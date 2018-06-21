# MealPlanner
The `mealPicker` function randomly selects meals and snack for a 7 day period. If you wish to add your own meals, just modify `ListOfMeals.csv` and the new food will be included in the selection.

## Example
meals <- read.csv("./ListOfMeals.csv",stringsAsFactors = FALSE)
source("MealPlannerFunc.R")
mealPicker()
