library(ggplot2)

energy_visualization <- function(data) {
  plot <- ggplot(data = data, aes(x = date, y = kWh)) +
    geom_line() +
    geom_point() +
    labs(title = paste("Electrical Power Production Over Time on", as.Date(data$date)))

  return(plot)
}