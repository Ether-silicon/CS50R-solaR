# Demonstrates required markup for R documentation files

\name{energy_visualization}
\alias{energy_visualization}
\title{Energy production visualization}
\description{Generate line plot of solar energy production over time.}
\usage{
energy_visualization(data)
}
\arguments{
\item{data}{The dataset.}
\item{date}{The date column.}
\value{
Return a line plot with dots over time.
}
\examples{
energy_visualization(data)
energy_visualization(data_frame)
}