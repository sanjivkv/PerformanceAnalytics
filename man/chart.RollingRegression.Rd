\name{chart.RollingQuantileRegression}
\alias{chart.RollingQuantileRegression}
\alias{chart.RollingRegression}
\alias{charts.RollingRegression}
\title{A wrapper to create charts of relative regression performance through time}
\usage{
  chart.RollingQuantileRegression(Ra, Rb, width = 12,
    Rf = 0, attribute = c("Beta", "Alpha", "R-Squared"),
    main = NULL, na.pad = TRUE, ...)

  chart.RollingRegression(Ra, Rb, width = 12, Rf = 0,
    attribute = c("Beta", "Alpha", "R-Squared"),
    main = NULL, na.pad = TRUE, ...)

  charts.RollingRegression(Ra, Rb, width = 12, Rf = 0,
    main = NULL, legend.loc = NULL, event.labels = NULL,
    ...)
}
\arguments{
  \item{Ra}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{Rb}{return vector of the benchmark asset}

  \item{Rf}{risk free rate, in same period as your returns}

  \item{width}{number of periods to apply rolling function
  window over}

  \item{attribute}{one of "Beta","Alpha","R-Squared" for
  which attribute to show}

  \item{main}{set the chart title, same as in \code{plot}}

  \item{na.pad}{TRUE/FALSE If TRUE it adds any times that
  would not otherwise have been in the result with a value
  of NA. If FALSE those times are dropped.}

  \item{legend.loc}{used to set the position of the legend}

  \item{event.labels}{if not null and event.lines is not
  null, this will apply a list of text labels to the
  vertical lines drawn}

  \item{\dots}{any other passthru parameters to
  \code{\link{chart.TimeSeries}}}
}
\description{
  A wrapper to create a chart of relative regression
  performance through time
}
\details{
  A group of charts in \code{charts.RollingRegression}
  displays alpha, beta, and R-squared estimates in three
  aligned charts in a single device.

  The attribute parameter is probably the most confusing.
  In mathematical terms, the different choices yield the
  following:

  Alpha - shows the y-intercept\cr Beta - shows the slope
  of the regression line\cr R-Squared - shows the degree of
  fit of the regression to the data\cr

  \code{chart.RollingQuantileRegression} uses
  \code{\link[quantreg]{rq}} rather than
  \code{\link[stats]{lm}} for the regression, and may be
  more robust to outliers in the data.
}
\note{
  Most inputs are the same as "\code{\link{plot}}" and are
  principally included so that some sensible defaults could
  be set.
}
\examples{
# First we load the data
data(managers)
chart.RollingRegression(managers[, 1, drop=FALSE],
		managers[, 8, drop=FALSE], Rf = .04/12)
charts.RollingRegression(managers[, 1:6],
		managers[, 8, drop=FALSE], Rf = .04/12,
		colorset = rich6equal, legend.loc="topleft")
dev.new()
chart.RollingQuantileRegression(managers[, 1, drop=FALSE],
		managers[, 8, drop=FALSE], Rf = .04/12)
# not implemented yet
#charts.RollingQuantileRegression(managers[, 1:6],
#		managers[, 8, drop=FALSE], Rf = .04/12,
#		colorset = rich6equal, legend.loc="topleft")
}
\author{
  Peter Carl
}
\seealso{
  \code{\link[stats]{lm}} \cr \code{\link[quantreg]{rq}}
  \cr
}
\keyword{distribution}
\keyword{hplot}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

