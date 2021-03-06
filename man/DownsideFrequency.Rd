\name{DownsideFrequency}
\alias{DownsideFrequency}
\title{downside frequency of the return distribution}
\usage{
  DownsideFrequency(R, MAR = 0, ...)
}
\arguments{
  \item{R}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{MAR}{Minimum Acceptable Return, in the same
  periodicity as your returns}

  \item{\dots}{any other passthru parameters}
}
\description{
  To calculate Downside Frequency, we take the subset of
  returns that are less than the target (or Minimum
  Acceptable Returns (MAR)) returns and divide the length
  of this subset by the total number of returns.
}
\details{
  \deqn{ DownsideFrequency(R , MAR) =
  \sum^{n}_{t=1}\frac{min[(R_{t} - MAR),
  0]}{R_{t}*n}}{DownsideFrequency(R, MAR) = length(subset
  of returns below MAR) / length(total returns)}

  where \eqn{n} is the number of observations of the entire
  series
}
\examples{
data(portfolio_bacon)
MAR = 0.005
print(DownsideFrequency(portfolio_bacon[,1], MAR)) #expected 0.458

data(managers)
print(DownsideFrequency(managers['1996']))
print(DownsideFrequency(managers['1996',1])) #expected 0.25
}
\author{
  Matthieu Lestel
}
\references{
  Carl Bacon, \emph{Practical portfolio performance
  measurement and attribution}, second edition 2008 p.94
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

