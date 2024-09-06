library(testthat)
library(solaR)

test_that("fills missing hours", {
  data <- data.frame(
    date = c(
      as.POSIXct("2024/01/01 08:00:00 AM"),
      as.POSIXct("2024/01/01 10:00:00 AM"),
      as.POSIXct("2024/01/02 12:00:00 PM")
    ),
    kWh = c(10, 20, 30)
  )
  result <- fill_kWh(data)
  expect_equal(nrow(result), 25)  # 24 hours in a day + 1 hour for the first day
})

test_that("fills missing hours 2", {
  data <- data.frame(
    date = c(
      as.POSIXct("2024/01/01 08:00:00 AM"),
      as.POSIXct("2024/01/01 10:00:00 AM"),
      as.POSIXct("2024/01/01 12:00:00 PM")
    ),
    kWh = c(10, 20, 30)
  )
  result <- fill_kWh(data)
  expect_equal(nrow(result), 25)  # 24 hours in a day + 1 hour for the first day
})