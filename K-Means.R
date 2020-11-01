# Install pre-requisite packages #

install.packages("stats")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggfortify")

# Load required librairies #

library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)

# Reading the data #

data<-read.csv("places.csv")

# K-Means #

km = kmeans(data,3)

autoplot(km,data,frame=TRUE)

write.csv(km$cluster, 'LIST')

