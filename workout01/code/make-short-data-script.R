# Title: GSW_shorts

# I am going to create a csv file name short-data.csv that will conttain tthe reuired variables to be used in the visualization phase

# Inputs: all the data set that have been designed to use in this data preparation process

# Outputs: to create short-data.csv file. 

getwd()
setwd("~/Desktop/UC Berkeley/Stat133/workout01")
curry <- read.csv("~/Desktop/UC Berkeley/Stat133/workout01/data/stephen-curry.csv", stringsAsFactors = FALSE)
klay = read.csv("~/Desktop/UC Berkeley/Stat133/workout01/data/klay-thompson.csv", stringsAsFactors = FALSE)
kevin = read.csv("~/Desktop/UC Berkeley/Stat133/workout01/data/kevin-durant.csv", stringsAsFactors = FALSE)
graymand = read.csv("~/Desktop/UC Berkeley/Stat133/workout01/data/draymond-green.csv", stringsAsFactors = FALSE)
iguodala = read.csv("~/Desktop/UC Berkeley/Stat133/workout01/data/andre-iguodala.csv", stringsAsFactors = FALSE)

curry = mutate(curry, "Name" = "Stephen Curry")
klay = mutate(klay, "Name" = "Klay Thompson")
kevin = mutate(kevin, "Name" = "Kevin Durant")
graymand = mutate(graymand, "Name" = "Draymand Green")
iguodala = mutate(iguodala, "Name" = "Andre Iguodala")

class(curry$shot_made_flag)
curry$shot_made_flag[curry$shot_made_flag == "n"] = "Shot_no"  
curry$shot_made_flag[curry$shot_made_flag == "y"] = "Shot_yes"  

klay$shot_made_flag[klay$shot_made_flag == "n"] = "Shot_no"  
klay$shot_made_flag[klay$shot_made_flag == "y"] = "Shot_yes"  

kevin$shot_made_flag[kevin$shot_made_flag == "n"] = "Shot_no"  
kevin$shot_made_flag[kevin$shot_made_flag == "y"] = "Shot_yes"  

graymand$shot_made_flag[graymand$shot_made_flag == "n"] = "Shot_no"  
graymand$shot_made_flag[graymand$shot_made_flag == "y"] = "Shot_yes"

iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] = "Shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] = "Shot_yes"

curry = mutate(curry, "minutes" = curry$period *12 - curry$minutes_remaining)
klay = mutate(klay, "minutes" = klay$period *12 - klay$minutes_remaining)
kevin = mutate(kevin, "minutes" = kevin$period *12 - kevin$minutes_remaining)
graymand = mutate(graymand, "minutes" = graymand$period *12 - graymand$minutes_remaining)
iguodala = mutate(iguodala, "minutes" = iguodala$period *12 - iguodala$minutes_remaining)

summary(curry)

sink("../output/stephen-curry-summary.txt", append = FALSE, "output")
for (i in summary(curry)) print(i)
sink()

sink("../output/Klay-Thompson-summary.txt", append = FALSE, "output")
for (i1 in summary(klay)) print(i1)
sink()

sink("../output/Kevin-Durant-summary.txt", append = FALSE, "output")
for (i2 in summary(kevin)) print(i2)
sink()

sink("../output/Graymand-Green-summary.txt", append = FALSE, "output")
for (i3 in summary(graymand)) print(i3)
sink()

sink("../output/Andre-Iguodala-summary.txt", append = FALSE, "output")
for (i4 in summary(iguodala)) print(i4)
sink()

shots_data = rbind(curry, klay, graymand, kevin, iguodala)

write.csv(shots_data, "../Data/shots-data.csv")

sink("../output/shots-data-summary.txt", append = FALSE, "output")
for (i5 in summary(shots_data)) print(i5)
sink()

