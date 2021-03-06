\name{table.CalendarReturns}
\alias{table.CalendarReturns}
\alias{table.Returns}
\title{Monthly and Calendar year Return table}
\usage{
  table.CalendarReturns(R, digits = 1, as.perc = TRUE,
    geometric = TRUE)
}
\arguments{
  \item{R}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{digits}{number of digits to round results to for
  presentation}

  \item{as.perc}{TRUE/FALSE if TRUE, multiply simple
  returns by 100 to get \%}

  \item{geometric}{utilize geometric chaining (TRUE) or
  simple/arithmetic chaining (FALSE) to aggregate returns,
  default TRUE}
}
\description{
  Returns a table of returns formatted with years in rows,
  months in columns, and a total column in the last column.
  For additional columns in \code{R}, annual returns will
  be appended as columns.
}
\note{
  This function assumes monthly returns and does not
  currently have handling for other scales.

  This function defaults to the first column as the monthly
  returns to be formatted.
}
\examples{
data(managers)
t(table.CalendarReturns(managers[,c(1,7,8)]))

# prettify with format.df in hmisc package
require("Hmisc")
result = t(table.CalendarReturns(managers[,c(1,8)]))
textplot(format.df(result, na.blank=TRUE, numeric.dollar=FALSE, cdec=rep(1,dim(result)[2])), rmar = 0.8, cmar = 1,  max.cex=.9, halign = "center", valign = "top", row.valign="center", wrap.rownames=20, wrap.colnames=10, col.rownames=c( rep("darkgray",12), "black", "blue"), mar = c(0,0,3,0)+0.1)
title(main="Calendar Returns")
}
\author{
  Peter Carl
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

