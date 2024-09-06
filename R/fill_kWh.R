library(dplyr)
library(tidyr)
library(lubridate)

fill_kWh <- function(data) {
  # initialize the min and max time over the day
  min_date <- floor_date(min(data$date), unit = "day")
  max_date <- ceiling_date(min(data$date), unit = "day")

  complete_time_index <- seq.POSIXt(
    from = min_date,
    to = max_date,
    by = "hour"
  )

  #fill in the empty time with 0 kWh
  data <- data |>
    right_join(data.frame(date = complete_time_index), by = "date") |>
    mutate(kWh = replace_na(kWh, 0))

  return(data)
}