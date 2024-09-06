library(testthat)
library(solaR)

test_that("filter wrong date", {
  data <- data.frame(
    date = c(
      "2024/01/01 08:00:00 AM",
      "2024/01/02 10:00:00 AM",
      "2024/01/03 12:00:00 PM"
    ),
    kWh = c(10, 20, 30)
  )
  desired_date <- "2024/05/08"  # Convert to character string
  expect_error(filter_date(data, desired_date), "No production data available for the specified date.")
})

test_that("filter correct date", {
  data <- data.frame(
    date = c(
      "2024/05/06 08:00:00 AM",
      "2024/05/06 10:00:00 AM",
      "2024/05/06 11:00:00 PM"
    ),
    kWh = c(10, 20, 30)
  )
  desired_date <- "2024/05/06"  # Convert to character string
  result <- filter_date(data, desired_date)
  expect_equal(nrow(result), 3)
})

test_that("filter correct date 2", {
  data <- data.frame(
    date = c(
      "2024/05/06 08:00:00 AM",
      "2024/05/07 10:00:00 AM",
      "2024/05/06 11:00:00 PM"
    ),
    kWh = c(10, 20, 30)
  )
  desired_date <- "2024/05/06"  # Convert to character string
  result <- filter_date(data, desired_date)
  expect_equal(nrow(result), 2)
})

test_that("filter null date", {
  data <- data.frame(
    date = c(
      "2024/05/06 08:00:00 AM",
      "2024/05/07 10:00:00 AM",
      "2024/05/06 11:00:00 PM"
    ),
    kWh = c(10, 20, 30)
  )
  desired_date <- "2024/05/08"  # Convert to character string
  expect_error(filter_date(data, desired_date), "No production data available for the specified date.")
})

