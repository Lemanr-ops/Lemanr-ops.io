library("tidyverse")
library("ggplot2")


Caller_Data_file <- read.csv(file ="/home/ryanl/Desktop/Coding projects/ACA data science/ACA geographics/excel_edits_data.csv",sep=",", encoding = "UTF-8")
Caller_Data_file <- data.frame(Caller_Data_file)

Total_caller_data_set <- Caller_Data_file[ , c( "Total.number", "total.Date", "total.Name", "total.State", "total.Country")]
#just count occurrences of states within column then make bar graph showing number of occurrences of said state with states as x axis.

Total_State_Occurance <- unlist(Total_caller_data_set$total.State)
Total_State_Occurance <- data.frame(Total_State_Occurance)
eTotal_State_Occurance <- table(Total_State_Occurance)
eTotal_State_Occurance <- data.frame(eTotal_State_Occurance)

Total_State_Occurance_Bar_Graph <-  ggplot(data = eTotal_State_Occurance) +
  geom_bar(mapping = aes(x=Total_State_Occurance, y=Freq ), stat='identity') +

#print(Total_State_Occurance_Bar_Graph)

Total_State_Occurance_Pie_Graph <- ggplot(data = eTotal_State_Occurance) +
  geom_bar(mapping = aes(x="", y=eTotal_State_Occurance$Freq, fill=eTotal_State_Occurance$Total_State_Occurance), stat="identity", width=1)+
  coord_polar("y",start=0)
print(Total_State_Occurance_Pie_Graph)