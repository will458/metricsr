\name{reg_cluster}
\alias{reg_cluster}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
HAC standard errors
}
\description{
Gets cluster-robust standard errors for a regression model (\code{lm} or \code{glm}). Imitates Stata's \code{cluster()} option. See details for how p-values are computed.
}
\usage{
reg_cluster(m, cluster_var, deg_f = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m}{
The estimated model, typically \code{lm} or \code{glm} object.
}
  \item{cluster_var}{
Character of length 1. Variable of the cluster. Example: \code{"state"}
}
  \item{deg_f}{
Degrees of freedom used to compute p-values. Default set to \code{NULL}. See details.
}
}
\details{
Default standard errors imitate Stata's. Degrees freedom equal number of groups - 1. If \code{deg_f} is assigned a numerical value, it will override the default and use that value for computing the p-values.
}
\value{
Returns \code{coeftest} object.
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
## The function is currently defined as
reg_cluster <- function(m, cluster_var, deg_f = NULL) {
  if (is.null(deg_f)) {
    b <- tidyr::drop_na(get(as.character(m$call)[3]), names(m$model))
    y <- length(unique(dplyr::pull(b, cluster_var))) - 1
    a <- lmtest::coeftest(m, multiwayvcov::cluster.vcov(m, dplyr::select(get(as.character(m$call)[3]), cluster_var)), df = y)
  } else {
    a <- lmtest::coeftest(m, multiwayvcov::cluster.vcov(m, cluster_var), df = deg_f)
  }
  return(a)
}


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
