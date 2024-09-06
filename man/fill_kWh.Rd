# Demonstrates required markup for R documentation files

\name{fill_kWh}
\alias{fill_kWh}
\title{Fill kWh}
\description{Fill up empty data with 0kWh.}
\usage{
fill_kWh(data)
fill_kWh(data_frame)
}
\arguments{
\item{data}{The dataset.}
\item{date}{The date column.}
\value{
Return a table of 2 columns: datetime & sum of kWh.
}
\examples{
fill_kWh(data)
fill_kWh(data_frame)
}