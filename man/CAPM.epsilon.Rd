\name{CAPM.epsilon}
\alias{CAPM.epsilon}
\alias{epsilon}
\alias{Regression}
\title{Regression epsilon of the return distribution}
\usage{
  CAPM.epsilon(Ra, Rb, Rf = 0, ...)
}
\arguments{
  \item{Ra}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{Rb}{return vector of the benchmark asset}

  \item{Rf}{risk free rate, in same period as your returns}

  \item{\dots}{any other passthru parameters}
}
\description{
  The regression epsilon is an error term measuring the
  vertical distance between the return predicted by the
  equation and the real result.
}
\details{
  \deqn{\epsilon_r = r_p - \alpha_r - \beta_r *
  b}{epsilon_r = r_p - alpha_r - beta_r * b}

  where \eqn{\alpha_r} is the regression alpha,
  \eqn{\beta_r} is the regression beta, \eqn{r_p} is the
  portfolio return and b is the benchmark return
}
\examples{
data(portfolio_bacon)
print(CAPM.epsilon(portfolio_bacon[,1], portfolio_bacon[,2])) #expected -0.013

data(managers)
print(CAPM.epsilon(managers['1996',1], managers['1996',8]))
print(CAPM.epsilon(managers['1996',1:5], managers['1996',8]))
}
\author{
  Matthieu Lestel
}
\references{
  Carl Bacon, \emph{Practical portfolio performance
  measurement and attribution}, second edition 2008 p.71
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

