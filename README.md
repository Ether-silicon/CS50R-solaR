# solaR: An R Package for Solar Energy Data Analysis
## Description:

`solaR` is an R package designed to simplify the analysis of solar energy production data. It provides functions for filtering, sorting, visualizing, and extracting insights from your solar data.

## Key Features:

- Data filtering: Filter data by date and time.
- Data sorting: Sort data by date and time.
- Data visualization: Create informative plots to visualize trends and patterns.
- Data analysis: Calculate key metrics and perform statistical analysis.

## Installation:

To install `solaR`, you can use the `devtools` package:
Code snippet
```
install.packages("devtools")
devtools::install_github("ether-silicon/solaR")
```
## Usage: 
Code snippet
```
library(solaR)

# Load your solar data
data <- read.csv("your_solar_data.csv")

# Filter data for a specific date
filtered_data <- filter_date(data, "2024-09-01")

# Visualize production data
plot <- energy_visualization(filtered_data)
print(plot)
```
## Functions:

`filter_date(data, date)`: Filters data for a specific date.

`fill_kWh(data)`: Fill up the kWh with 0 for empty timeline.

`scale_up(data)`: For scale up the kWh by 1000x.

`energy_visualization(data)`: Creates a line plot of kWh production over time.

