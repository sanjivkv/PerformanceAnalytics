\name{Return.relative}
\alias{Return.relative}
\title{calculate the relative return of one asset to another}
\usage{
  Return.relative(Ra, Rb, ...)
}
\arguments{
  \item{Ra}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{Rb}{return object for the benchmark asset}

  \item{\dots}{ignored}
}
\value{
  xts or other time series of relative return
}
\description{
  Calculates the ratio of the cumulative performance for
  two assets through time.
}
\examples{
data(managers)
head(Return.relative(managers[,1:3], managers[,8,drop=FALSE]),n=20)
}
\author{
  Peter Carl
}
\seealso{
  \code{\link{chart.RelativePerformance}}
}
\keyword{ts}

