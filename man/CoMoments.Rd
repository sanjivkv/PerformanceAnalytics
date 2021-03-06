\name{CoMoments}
\alias{CoKurtosis}
\alias{CoMoments}
\alias{CoSkewness}
\alias{CoVariance}
\title{Functions for calculating comoments of financial time series}
\usage{
  CoVariance(Ra, Rb)

  CoSkewness(Ra, Rb)

  CoKurtosis(Ra, Rb)
}
\arguments{
  \item{Ra}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{Rb}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of index, benchmark, portfolio, or
  secondary asset returns to compare against}
}
\description{
  calculates coskewness and cokurtosis as the skewness and
  kurtosis of two assets with reference to one another.
}
\details{
  Ranaldo and Favre (2005) define coskewness and cokurtosis
  as the skewness and kurtosis of a given asset analysed
  with the skewness and kurtosis of the reference asset or
  portfolio.  Adding an asset to a portfolio, such as a
  hedge fund with a significant level of coskewness to the
  portfolio, can increase or decrease the resulting
  portfolio's skewness. Similarly, adding a hedge fund with
  a positive cokurtosis coefficient will add kurtosis to
  the portfolio.

  The co-moments are useful for measuring the marginal
  contribution of each asset to the portfolio's resulting
  risk.  As such, comoments of asset return distribution
  should be useful as inputs for portfolio optimization in
  addition to the covariance matrix.  Martellini and
  Ziemann (2007) point out that the problem of portfolio
  selection becomes one of selecting tangency points in
  four dimensions, incorporating expected return, second,
  third and fourth centered moments of asset returns.

  Even outside of the optimization problem, measuring the
  co-moments should be a useful tool for evaluating whether
  or not an asset is likely to provide diversification
  potential to a portfolio, not only in terms of normal
  risk (i.e. volatility) but also the risk of assymetry
  (skewness) and extreme events (kurtosis).
}
\examples{
data(managers)
CoVariance(managers[, "HAM2", drop=FALSE], managers[, "SP500 TR", drop=FALSE])
CoSkewness(managers[, "HAM2", drop=FALSE], managers[, "SP500 TR", drop=FALSE])
CoKurtosis(managers[, "HAM2", drop=FALSE], managers[, "SP500 TR", drop=FALSE])
}
\author{
  Kris Boudt, Peter Carl, Brian Peterson
}
\references{
  Boudt, Kris, Brian G. Peterson, and Christophe Croux.
  2008. Estimation and Decomposition of Downside Risk for
  Portfolios with Non-Normal Returns. Journal of Risk.
  Winter.

  Martellini, Lionel, and Volker Ziemann. 2007. Improved
  Forecasts of Higher-Order Comoments and Implications for
  Portfolio Selection. EDHEC Risk and Asset Management
  Research Centre working paper.

  Ranaldo, Angelo, and Laurent Favre Sr. 2005. How to Price
  Hedge Funds: From Two- to Four-Moment CAPM. SSRN
  eLibrary.

  Scott, Robert C., and Philip A. Horvath. 1980. On the
  Direction of Preference for Moments of Higher Order than
  the Variance. Journal of Finance 35(4):915-919.
}
\seealso{
  \code{\link{BetaCoSkewness}} \cr
  \code{\link{BetaCoKurtosis}} \cr
  \code{\link{BetaCoMoments}}
}
\concept{
  co-moments

  moments
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

