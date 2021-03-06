% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layer_count.R
\name{layer_count}
\alias{layer_count}
\alias{layer_count.default}
\alias{layer_count.ggplot}
\title{Plot layer count}
\usage{
layer_count(p)

\method{layer_count}{default}(p)

\method{layer_count}{ggplot}(p)
}
\arguments{
\item{p}{plot object}
}
\value{
number
}
\description{
Retrieves the number of layers in a given plot
}
\examples{
library(ggplot2)
p <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) + geom_point()
layer_count(p) # 1
layer_count(p + geom_smooth(method = "lm") + geom_density_2d()) # 3
}
