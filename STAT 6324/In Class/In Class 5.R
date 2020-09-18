#Q1
#A
df <- read.csv(file.choose())

#Q2
ggplot(df, aes(x=tuition, y=sat_avg, shape = control, col = control, size = undergrads)) + 
  geom_point() + xlab("Tuition") + ylab("SAT Average") + ggtitle("SAT vs Tuition")

#Q3
ggplot(df) +
geom_bar(mapping = aes(x = region, fill = control)) +
theme(plot.background = element_blank()) +
theme(panel.background = element_blank()) +
scale_fill_manual(values = c("Red", "Blue"), name = "Institution Type") +
theme(legend.position="bottom")

#Q4
ggplot(df) + geom_histogram(mapping = aes(x = undergrads, y=..density..), binwidth = 1000)

#Q5
ggplot(df) + geom_boxplot(mapping = aes(x = tuition, y = control, fill = region))
