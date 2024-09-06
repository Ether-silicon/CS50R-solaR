library(solaR)

# Read dataset from kaggle
data <- read.csv("Solar_Energy_Production.csv")

# Main file execute function
date <- readline(prompt = "Input the date: ")
data <- filter_date(data, date)
data <- fill_kWh(data)
data <- scale_up(data)
print(data)
plot <- energy_visualization(data)
print(plot)
