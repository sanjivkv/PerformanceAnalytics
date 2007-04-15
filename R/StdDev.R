`StdDev` <-
function(Ra)
{ # @author Brian G. Peterson

    r = checkDataVector(Ra)

    # DESCRIPTION:
    # Standard deviation of Monthly Returns:
    result = sqrt(var(r))

    # Return Value:
    result
}

###############################################################################

`std` <-
function(Ra) {
    # NOTE: std function is listed in the doc for fBasics, but not implemented
    return(StdDev(Ra))
}

###############################################################################
# R (http://r-project.org/) Econometrics for Performance and Risk Analysis
#
# Copyright (c) 2004-2007 Peter Carl and Brian G. Peterson
#
# This library is distributed under the terms of the GNU Public License (GPL)
# for full details see the file COPYING
#
# $Id: StdDev.R,v 1.4 2007/03/12 15:45:50 brian Exp $
#
###############################################################################
# $Log: StdDev.R,v $
# Revision 1.4  2007/03/12 15:45:50  brian
# - add equations to documentation
# - standardize on Ra for Returns of asset
#
# Revision 1.3  2007/02/07 13:24:49  brian
# - fix pervasive comment typo
#
# Revision 1.2  2007/02/05 19:03:04  brian
# - add std wrapper function
#
# Revision 1.1  2007/02/02 19:06:15  brian
# - Initial Revision of packaged files to version control
# Bug 890
#
###############################################################################