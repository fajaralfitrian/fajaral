myVariabel <- 1 + 1
myVariabel

variabelA <- 2 + 2


#Datatype

myVector <- c(1,2,3,4)
mixData <- list(1,3,"A")
myvector2 <- c(2,4,6,8)
myVector + myvector2



a <- 10

b <- 20

if (a > b){
  print("true")
} else {
  print("false")
for (i in myVector) {
  if (i > 2) {
    print("besar")

    for (i in 1:100) {
  if (i < 10){
    print("kecil")
  } else if (i < 20){
    print("lumayan")
  } else {
    print("besar")
  }
    }

vector1 <- c(1,2,3,4)
vector2 <- c(5,6,7,8)
vector3 <- c(9,10,11,12)

fungsiTambah <- function(a,b) {
  c <- a + b
  d <- c(1,1,1,1)
  c + d
}
var12 <- fungsiTambah(vector1, vector2)
var13 <- fungsiTambah(vector1, vector3)

var12
length(vector1)
sum(vector1)
for (i in 1:5) {
  print(paste0("Test ", i))
}
library("tidyverse")
library("here")
library("janitor")
library(ggplot2)

library(readr)
library(here)
library(janitor)

data.path <- here("data", "IndonesianMammalVertNet.csv")
data.path
data.df <- read.csv(data.path)
colnames(data.df)
cleanedData.df <- clean_names(data.df)
colnames(cleanedData.df)
newData.df <- select(cleanedData.df, order, genus, specificepithet, lengthinmm, minimumelevationinmeters)
colls <- c("order", "genus", "specificepithet", "lengthinmm", "minimumelevationinmeters")
ggplot(newData.df, aes(x = order, y = lengthinmm)) +
  geom_point() +
  theme_classic() +
  labs(x = "order", y = "lengthinmm")
ggsave(here("figures", "plot1.png"), height = 5, width = 7)
