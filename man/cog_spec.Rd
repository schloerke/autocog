% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cog_spec.R
\name{cog_spec}
\alias{cog_spec}
\alias{as_cog_specs}
\title{Cognostic Specification}
\usage{
cog_spec(
  bivariate_continuous = TRUE,
  bivariate_counts = TRUE,
  bivariate_step = TRUE,
  boxplot = TRUE,
  density_2d_continuous = TRUE,
  density_continuous = TRUE,
  grouped_counts = TRUE,
  grouped_testing = TRUE,
  hex_counts = TRUE,
  histogram_counts = TRUE,
  linear_model = TRUE,
  loess_model = TRUE,
  pairwise_counts = TRUE,
  quantile_quantile = TRUE,
  scagnostics = TRUE,
  smooth_line = TRUE,
  square_counts = TRUE,
  univariate_continuous = TRUE,
  univariate_counts = TRUE,
  univariate_discrete = TRUE,
  ...,
  .keep_layer = TRUE
)

as_cog_specs(p, specs)
}
\arguments{
\item{bivariate_continuous, bivariate_counts, bivariate_step, boxplot, density_2d_continuous, density_continuous, grouped_counts, grouped_testing, hex_counts, histogram_counts, linear_model, loess_model, pairwise_counts, quantile_quantile, scagnostics, smooth_line, square_counts, univariate_continuous, univariate_counts, univariate_discrete}{names of cognostic groups to calculate.  The boolean value (TRUE) supplied to each argument determines if the value should be displayed if possible or removed if possible.}

\item{...}{ignored.  Will cause error if any are supplied}

\item{.keep_layer}{boolean (TRUE) that determines if the layer should be kept at all}

\item{p}{plot object in question}

\item{specs}{list of cog_spec outputs for each layer of the plot object}
}
\value{
cognostic specification that determines which cogs are added or removed if possible
}
\description{
Cognostic Specification
}
\examples{
# example cog specifications
# display like normal
cog_spec(); TRUE
# remove scagnostics
cog_spec(scagnostics = FALSE)
# remove layer
cog_spec(.keep_layer = FALSE); FALSE

# set up data
p <- ggplot2::qplot(Sepal.Length, Sepal.Width, data = iris, geom = c("point", "smooth"))
dt <- tibble::tibble(panel = list(p))

# compute cognostics like normal
add_panel_cogs(dt)

# do not compute scagnostics for geom_point cognostics
# compute geom_smooth cognostics
add_panel_cogs(dt, spec = list(cog_spec(scagnostics = FALSE), TRUE))

# do not compute scagnostics for geom_point cognostics
# do not compute geom_smooth cognostics
add_panel_cogs(dt, spec = list(cog_spec(scagnostics = FALSE), FALSE))
}
