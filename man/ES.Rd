\name{ETL}
\alias{CVaR}
\alias{ES}
\alias{ETL}
\title{calculates Expected Shortfall(ES) (or Conditional Value-at-Risk(CVaR) for
univariate and component, using a variety of analytical methods.}
\usage{
  ETL(R = NULL, p = 0.95, ...,
    method = c("modified", "gaussian", "historical"),
    clean = c("none", "boudt", "geltner"),
    portfolio_method = c("single", "component"),
    weights = NULL, mu = NULL, sigma = NULL, m3 = NULL,
    m4 = NULL, invert = TRUE, operational = TRUE)
}
\arguments{
  \item{R}{a vector, matrix, data frame, timeSeries or zoo
  object of asset returns}

  \item{p}{confidence level for calculation, default p=.95}

  \item{method}{one of "modified","gaussian","historical",
  see Details.}

  \item{clean}{method for data cleaning through
  \code{\link{Return.clean}}. Current options are "none",
  "boudt", or "geltner".}

  \item{portfolio_method}{one of
  "single","component","marginal" defining whether to do
  univariate, component, or marginal calc, see Details.}

  \item{weights}{portfolio weighting vector, default NULL,
  see Details}

  \item{mu}{If univariate, mu is the mean of the series.
  Otherwise mu is the vector of means of the return series
  , default NULL, , see Details}

  \item{sigma}{If univariate, sigma is the variance of the
  series. Otherwise sigma is the covariance matrix of the
  return series , default NULL, see Details}

  \item{m3}{If univariate, m3 is the skewness of the
  series. Otherwise m3 is the coskewness matrix of the
  returns series, default NULL, see Details}

  \item{m4}{If univariate, m4 is the excess kurtosis of the
  series. Otherwise m4 is the cokurtosis matrix of the
  return series, default NULL, see Details}

  \item{invert}{TRUE/FALSE whether to invert the VaR
  measure.  see Details.}

  \item{operational}{TRUE/FALSE, default TRUE, see
  Details.}

  \item{\dots}{any other passthru parameters}
}
\description{
  Calculates Expected Shortfall(ES) (also known as)
  Conditional Value at Risk(CVaR) or Expected Tail Loss
  (ETL) for univariate, component, and marginal cases using
  a variety of analytical methods.
}
\note{
  The option to \code{invert} the ES measure should appease
  both academics and practitioners.  The mathematical
  definition of ES as the negative value of extreme losses
  will (usually) produce a positive number. Practitioners
  will argue that ES denotes a loss, and should be
  internally consistent with the quantile (a negative
  number).  For tables and charts, different preferences
  may apply for clarity and compactness.  As such, we
  provide the option, and set the default to TRUE to keep
  the return consistent with prior versions of
  PerformanceAnalytics, but make no value judgement on
  which approach is preferable.
}
\section{Background}{
  This function provides several estimation methods for the
  Expected Shortfall (ES) (also called Expected Tail Loss
  (ETL) orConditional Value at Risk (CVaR)) of a return
  series and the Component ES (ETL/CVaR) of a portfolio.

  At a preset probability level denoted \eqn{c}, which
  typically is between 1 and 5 per cent, the ES of a return
  series is the negative value of the expected value of the
  return when the return is less than its \eqn{c}-quantile.
  Unlike value-at-risk, conditional value-at-risk has all
  the properties a risk measure should have to be coherent
  and is a convex function of the portfolio weights (Pflug,
  2000).  With a sufficiently large data set, you may
  choose to estimate ES with the sample average of all
  returns that are below the \eqn{c} empirical quantile.
  More efficient estimates of VaR are obtained if a
  (correct) assumption is made on the return distribution,
  such as the normal distribution. If your return series is
  skewed and/or has excess kurtosis, Cornish-Fisher
  estimates of ES can be more appropriate. For the ES of a
  portfolio, it is also of interest to decompose total
  portfolio ES into the risk contributions of each of the
  portfolio components. For the above mentioned ES
  estimators, such a decomposition is possible in a
  financially meaningful way.
}
\examples{
data(edhec)

    # first do normal ES calc
    ES(edhec, p=.95, method="historical")

    # now use Gaussian
    ES(edhec, p=.95, method="gaussian")

    # now use modified Cornish Fisher calc to take non-normal distribution into account
    ES(edhec, p=.95, method="modified")

    # now use p=.99
    ES(edhec, p=.99)
    # or the equivalent alpha=.01
    ES(edhec, p=.01)

    # now with outliers squished
    ES(edhec, clean="boudt")

    # add Component ES for the equal weighted portfolio
    ES(edhec, clean="boudt", portfolio_method="component")
}
\author{
  Brian G. Peterson and Kris Boudt
}
\references{
  Boudt, Kris, Peterson, Brian, and Christophe Croux. 2008.
  Estimation and decomposition of downside risk for
  portfolios with non-normal returns. 2008. The Journal of
  Risk, vol. 11, 79-103.

  Cont, Rama, Deguest, Romain and Giacomo Scandolo.
  Robustness and sensitivity analysis of risk measurement
  procedures. Financial Engineering Report No. 2007-06,
  Columbia University Center for Financial Engineering.

  Laurent Favre and Jose-Antonio Galeano. Mean-Modified
  Value-at-Risk Optimization with Hedge Funds. Journal of
  Alternative Investment, Fall 2002, v 5.

  Martellini, Lionel, and Volker Ziemann.  Improved
  Forecasts of Higher-Order Comoments and Implications for
  Portfolio Selection. 2007. EDHEC Risk and Asset
  Management Research Centre working paper.

  Pflug, G. Ch.  Some remarks on the value-at-risk and the
  conditional value-at-risk. In S. Uryasev, ed.,
  Probabilistic Constrained Optimization: Methodology and
  Applications, Dordrecht: Kluwer, 2000, 272-281.

  Scaillet, Olivier. Nonparametric estimation and
  sensitivity analysis of expected shortfall. Mathematical
  Finance, 2002, vol. 14, 74-86.
}
\seealso{
  \code{\link{VaR}} \cr \code{\link{SharpeRatio.modified}}
  \cr \code{\link{chart.VaRSensitivity}} \cr
  \code{\link{Return.clean}}
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

