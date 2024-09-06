library(dplyr)
library(lubridate)

scale_up <- function(data) {
  # Scale up kWh values by 1000
  data$kWh <- data$kWh * 1000

  return(data)
}

