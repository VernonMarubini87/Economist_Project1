# Corruption and Human Development Project

# Install packages and Import libraries to load the csv file 'Economist_Assignment_Data.csv' into a dataframe called df
install.packages("ggplot2")
install.packages("data.table")
install.packages("readr")
library(ggplot2)
library(data.table)
library(readr)

# Check the head of df
df <- read.csv("C:/Users/User/Desktop/Economist_Assignment_Data.csv")
head(df)

# Use ggplot() + geom_point() to create a scatter plot object called pl
pl <- ggplot(df,aes(x=CPI,y=HDI,color=Region)) + geom_point()
pl

# Changing the points to be larger empty circles
pl <- ggplot(df,aes(x=CPI,y=HDI,color=Region)) + geom_point(size=4,shape=1)
pl

# Add a trendline
pl + geom_smooth(aes(group=1))
pl

# Edit the trendline
pl2 <- pl + geom_smooth(aes(group=1),method ='lm',formula = y~log(x),se=FALSE,color='red')
pl2

# Add geom_text
pl2 + geom_text(aes(label=Country))

# Labeling a subset

pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")

pl3 <- pl2 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)
pl3

# Add theme
pl4 <- pl3 + theme_bw()
pl4

# Add scale_x_continuous() 
pl5 <- pl4 + scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)",
                                limits = c(.9, 10.5),breaks=1:10) 
pl5

#Use scale_y_continuous to do similar operations to the y axis

pl6 <- pl5 + scale_y_continuous(name = "Human Development Index, 2011 (1=Best)",
                                limits = c(0.2, 1.0))
pl6

# Add a string as a title using ggtitle()
pl6 + ggtitle("Corruption and Human development")

# Using ggthemes
install.packages("ggthemes")
install.packages("dplyr")
library(ggthemes)
library(dplyr)
pl6 + theme_economist_white()
