library(testthat)
library(solaR)

test_that("uses data and aesthetics", {
  data <- data.frame(
    date = c(
      as.POSIXct("2024/01/01 08:00:00 AM"),
      as.POSIXct("2024/01/02 10:00:00 AM"),
      as.POSIXct("2024/01/03 12:00:00 PM")
    ),
    kWh = c(10, 20, 30)
  )
  plot <- energy_visualization(data)
  expect_equal(names(plot$data)[1], "date") # Check x-axis data name
  expect_equal(names(plot$data)[2], "kWh")  # Check y-axis data name
})