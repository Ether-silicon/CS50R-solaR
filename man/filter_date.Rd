\name{filter_date}
\alias{filter_date}
\title{Filter date}
\description{Filter the input date over the sample dataset. Summarise the kWh over the time and order in ascending order.}
\usage{
filter_date(data, date)
}
\arguments{
\item{data}{The dataset.}
\item{date}{The date column.}
\value{
Return table of 2 column of datetime and kWh.
}
\examples{
filter_date(data, date)
}