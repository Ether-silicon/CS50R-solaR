library(dplyr)
library(lubridate)

filter_date <- function(data, date) {
  # Filter data for the desired date (assuming 'date' column is a Date class)
  filtered_data <- data[data$date == as.Date(date), ]

  # Check if filtered data is empty
  if (nrow(filtered_data) == 0) {
    stop("No production data available for the specified date.")
  }

  # Group by date and sum kWh, converting to numeric if needed
  data <- filtered_data |>
    group_by(date) |>
    summarise(kWh = sum(as.numeric(kWh))) |>
    mutate(date = ymd_hms(date)) |> # Convert to POSIXct
    arrange(date) # Sort in ascending order

  return(data)
}