#Assignment 3.2


install.packages("devtools")
install.packages("roxygen2")
devtools::create("myfirstpackage")

remind_me()

#to do list

to_do_list <- c("homework","groceries","cleaning","cooking","sleeping")
remind_me <- function(){
  for(i in to_do_list) if(i =="groceries"){
    return("buy cookies!")
  }
  }
remind_me()

#Assignment 3.3

Q_3_2_1 <- "Simulate some data and show them in a boxplot."
Q_3_2_16 <- "Look at this lengthy way to construct a matrix. Can you achieve the same with a single line of code shorter than the first line of the code below?"
Q_3_2_7 <- "Recreate this plot from the Orange dataset"
Q_3_2_3 <- "Can you recreate the barplot with the ggplot2 and titanic packages (dataset titanic_train has the passenger data)?"


#try with four questions

cheat <- function(question){
  if(question == Q_3_2_1){
    print(paste("question:", Q_3_2_1))
    print("my_simulated_data_2 <- rnorm(100) boxplot(my_simulated_data_2)")
  } 
  if(question == Q_3_2_16){
    print(paste("question:", Q_3_2_16))
    print("my_matrix <- matrix(c(1, 4, 7, 2, 5, 8, 3, 6, 9), 3, 3) * (1:nrow(my_matrix))")
  }
  if(question == Q_3_2_7){
    print(paste("question:", Q_3_2_7))
    print("ggplot(Orange, aes(y = circumference, x = age, )) + geom_smooth(method = lm)")
  }
  if(question == Q_3_2_3){
    print(paste("question:", Q_3_2_3))
    print('library(ggplot2)
            library(tidyverse)
            library("titanic")
            ggplot(titanic_train, aes(Sex)) + geom_bar(aes(fill = factor(Survived))) + labs(fill = "How did it go?") + scale_fill_discrete(labels = c("dead", "alive"))')
    
  }
} 


cheat(Q_3_2_1)