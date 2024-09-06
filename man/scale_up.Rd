\name{scale_up}
\alias{scale_up}
\title{Scale up kWh}
\description{Multiply the summation of energy by 1000x.}
\usage{
scale_up(data)
}
\arguments{
\item{data}{The dataset.}
\item{date}{The date column.}
\value{
Return table of 2 column of datetime and kWh, with the kWh multiply with 1000x.
}
\examples{
scale_up(data)
}