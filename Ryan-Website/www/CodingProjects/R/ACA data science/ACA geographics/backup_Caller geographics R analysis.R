library("tidyverse")
library("ggplot2")
library("plotly")
library("plotly")
library("htmlwidgets")

Caller_Data_file <- read.csv(file ="/home/ryanl/Desktop/Coding projects/ACA data science/ACA geographics/excel_edits_data.csv",sep=",", encoding = "UTF-8")
Caller_Data_2019 <- Caller_Data_file[ , c("X2019.number", "Date", "Name", "State", "Country")]
Caller_Data_2020 <- Caller_Data_file[ , c("X2020.number", "Date.1", "Name.1", "State.1", "Country.1")]
Caller_Data_Total <- Caller_Data_file[ , c("Total.number", "total.Date", "total.Name", "total.State", "total.Country")]

Caller_Data_2019_Freq <- data.frame(table(Caller_Data_2019$State, exclude = ""))
Caller_Data_2020_Freq <- data.frame(table(Caller_Data_2020$State.1, exclude = ""))
Caller_Data_Total_Freq <- data.frame(table(Caller_Data_Total$total.State, exclude = ""))

Caller_Data_Bar_Graph_Total <- ggplot(data = Caller_Data_Total_Freq) +
  geom_bar(mapping = aes(x=Caller_Data_Total_Freq$Var1, y=Caller_Data_Total_Freq$Freq), stat = "identity") +
  ylim(0,85) +
  theme(axis.text.x=element_text(angle=90,size = 7, vjust =0.2, hjust = 1)) +
  labs(title = "Frequency of calls per state in 2019 & 2020", x="States", y="Number of Calls")
ggplotly(Caller_Data_Bar_Graph_2019)

Caller_Data_Bar_Graph_2019 <- ggplot(data = Caller_Data_2019_Freq) +
  geom_bar(mapping = aes(x=Caller_Data_2019_Freq$Var1, y=Caller_Data_2019_Freq$Freq), stat = "identity") +
  ylim(0,85) +
  theme(axis.text.x=element_text(angle=90,size = 7, vjust =0.2, hjust = 1)) +
  labs(title = "Frequency of calls per state in 2019", x="States", y="Number of Calls")
ggplotly(Caller_Data_Bar_Graph_2020)

Caller_Data_Bar_Graph_2020 <- ggplot(data = Caller_Data_2020_Freq) +
  geom_bar(mapping = aes(x=Caller_Data_2020_Freq$Var1, y=Caller_Data_2020_Freq$Freq), stat = "identity") +
  ylim(0,85) +
  theme(axis.text.x=element_text(angle=90,size = 7, vjust =0.2, hjust = 1)) +
  labs(title = "Frequency of calls per state in 2020", x="States", y="Number of Calls")
ggplotly(Caller_Data_Bar_Graph_Total)

##===================
##===================
##===================

Caller_Data_Pie_Graph_2019 <- ggplot(Caller_Data_2019_Freq)+
  geom_
Caller_Data_Pie_Graph_2020 <- 
Caller_Data_Pie_Graph_Total <- 