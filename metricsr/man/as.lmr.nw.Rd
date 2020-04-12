\name{as.lmr.nw}
\alias{as.lmr.nw}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Newey-West Standard Errors
}
\description{
Gets Newey-West Standard Errors. Truncation parameter is set by the user. Replicates Stata nw command. Depends on the lmtest and sandwich packages.
}
\usage{
as.lmr.nw(x, truncation)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
lm class object
}
  \item{truncation}{
integer indicating truncation (no default -- must be specified)
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, truncation = "integer indicated truncation")
{
    library(lmtest)
    library(sandwich)
    b <- coeftest(x, vcov. = NeweyWest(x, lag = truncation, prewhite = FALSE,
        adjust = TRUE, verbose = TRUE))
    return(b)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
