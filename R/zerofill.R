###############################################################################
# R (http://r-project.org/) Numeric Methods for Optimization of Portfolios
#
# Copyright (c) 2004-2012 Kris Boudt, Peter Carl and Brian G. Peterson
#
# This R package is distributed under the terms of the GNU Public License (GPL)
# for full details see the file COPYING
#
# $Id: zerofill.R 1905 2012-04-21 19:23:13Z braverock $
#
###############################################################################





#' zerofill
#' 
#' Fill NA's with zeros in a time series to allow analysis when the matrix must
#' be complete.
#' 
#' Note that this function has risks, use carefully.  Complete data is
#' preferred.  Barring that, filling a small percentage of results in a the
#' middle of a large set are unlikely to cause problems. Barring that, realize
#' that this will skew your results.
#' 
#' @param x time series to zero fill
zerofill <- function (x) {
  mat<-checkData(x,"matrix")
  for(column in 1:ncol(mat)){
    for (row in 1:nrow(mat)){
      if(is.na(mat[row,column])) mat[row,column] <- 0
    }
  }
  x<-reclass(mat,x)
  return(x)
}
