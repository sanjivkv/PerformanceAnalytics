\name{CAPM.jensenAlpha}
\alias{CAPM.jensenAlpha}
\alias{Jensen'sAlpha}
\title{Jensen's alpha of the return distribution}
\usage{
  CAPM.jensenAlpha(Ra, Rb, Rf = 0, ...)
}
\arguments{
  \item{Ra}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{Rb}{return vector of the benchmark asset}

  \item{Rf}{risk free rate, in same period as your returns}

  \item{\dots}{any other passthru parameters}
}
\description{
  The Jensen's alpha is the intercept of the regression
  equation in the Capital Asset Pricing Model and is in
  effect the exess return adjusted for systematic risk.
}
\details{
  \deqn{\alpha = r_p - r_f - \beta_p * (b - r_f)}{alpha =
  r_p - r_f - beta_p * (b - r_f)}

  where \eqn{r_f} is the risk free rate, \eqn{\beta_r} is
  the regression beta, \eqn{r_p} is the portfolio return
  and b is the benchmark return
}
\examples{
data(portfolio_bacon)
print(CAPM.jensenAlpha(portfolio_bacon[,1], portfolio_bacon[,2])) #expected -0.014

data(managers)
print(CAPM.jensenAlpha(managers['1996',1], managers['1996',8]))
print(CAPM.jensenAlpha(managers['1996',1:5], managers['1996',8]))
}
\author{
  Matthieu Lestel
}
\references{
  Carl Bacon, \emph{Practical portfolio performance
  measurement and attribution}, second edition 2008 p.72
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

