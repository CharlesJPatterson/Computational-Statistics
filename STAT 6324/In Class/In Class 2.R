#A
inspections <- read.csv(file.choose())

#B
str(inspections)
#145606

#C
inspections$Inspection.ID <- as.character(inspections$Inspection.ID)

#D
library("readr")
file <- read_csv("/Users/charles/downloads/inspections.csv")

#E
file_filtered <- subset(file, Results == "Pass")
file_filtered

#F
sorted <- file[order(file$`Inspection ID`),]




#Problem 2
#A
df <- read.delim("/Users/charles/Downloads/inpatient.tsv")

#B
#Obs = 163065, 12 Variables

#C
df$Average.Covered.Charges <- as.numeric(df$Average.Covered.Charge)
df$Average.Total.Payments <- as.numeric(df$Average.Total.Payments)
df$Average.Medicare.Payments <- as.numeric(df$Average.Medicare.Payments)

summary(df$Average.Covered.Charges)
summary(df$Average.Total.Payments)
summary(df$Average.Medicare.Payments)

#D
df$TotalPayment <- df$Average.Covered.Charges + df$Average.Total.Payments + df$Average.Medicare.Payments

#E
library(dplyr)
sub_df <- select(df, Provider.Id, Total.Discharges, TotalPayment)
sub_df

#F
df <- read_tsv("/Users/charles/Downloads/inpatient.tsv")
