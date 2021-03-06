% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.r
\name{asciiPlot}
\alias{asciiPlot}
\title{ASCII chart of vector. Generate an ascii chart for a series of numbers.}
\usage{
asciiPlot(series, cfg = list())
}
\arguments{
\item{series}{A numeric vector, missing data values in the
series can be specified as a NA.}

\item{cfg}{A named list with some options: \code{height} specifies the
number of rows the graph should occupy. It can be  used to scale down a
graph with large data values. \code{format} specifies a C format string
used to format the labels on the y-axis. The default value is "%.2f".
\code{symbols} provides a list of single characters to use for drawing
the curve. \code{offset} changes what column will the y-axis be drawn.
Default is 3. \code{min} and \code{max} will clamp the y-axis and all
values.}
}
\value{
A character string
}
\description{
\code{asciiPlot} returns a character string of a chart for given series.
}
\examples{
series <- c(1,2,3,4,4,3,2,1)
cat(asciiPlot(series))

series <- c(1,2,3,NA,4,3,NA,1)
cat(asciiPlot(series))

series <- c(1,2,3,4,NA,4,3,2,1)
cat(asciiPlot(series, list('min' = 0)))

\dontrun{
cat(asciiPlot(c(NA, NA)))
}
}
