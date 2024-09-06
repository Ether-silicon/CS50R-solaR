library(testthat)
library(solaR)

test_that("scale correctly", {
  data <- data.frame(
    date = c(
      as.POSIXct("2024/01/01 08:00:00 AM"),
      as.POSIXct("2024/01/02 10:00:00 AM"),
      as.POSIXct("2024/01/03 12:00:00 PM")
    ),
    kWh = c(10, 20, 30)
  )
  expect_data <- data.frame(
    date = c(
      as.POSIXct("2024/01/01 08:00:00 AM"),
      as.POSIXct("2024/01/02 10:00:00 AM"),
      as.POSIXct("2024/01/03 12:00:00 PM")
    ),
    kWh = c(10000, 20000, 30000)
  )
  expect_equal(scale_up(data), expect_data)  # Check values
})

test_that("scale correctly 2", {
  data <- data.frame(
    date = c(
      as.POSIXct("2024/01/01 08:00:00 AM"),
      as.POSIXct("2024/01/02 10:00:00 AM"),
      as.POSIXct("2024/01/03 12:00:00 PM")
    ),
    kWh = c(1.0, 2.0, 3.5)
  )
  expect_data <- data.frame(
    date = c(
      as.POSIXct("2024/01/01 08:00:00 AM"),
      as.POSIXct("2024/01/02 10:00:00 AM"),
      as.POSIXct("2024/01/03 12:00:00 PM")
    ),
    kWh = c(1000, 2000, 3500)
  )
  expect_equal(scale_up(data), expect_data)  # Check values
})