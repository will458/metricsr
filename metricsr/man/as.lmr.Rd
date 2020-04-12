\name{as.lmr}
\alias{as.lmr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Get robust standard errors
%%
}
\description{
This function gets robust standard errors for regression models. Uses lmtest and sandwich. Replicates reg y x1 x2 ... , r in Stata
}
\usage{
as.lmr(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
lm or glm class object
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
coeftest object
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
data(mtcars)
m1 <- lm(data = mtcars, mpg ~ cyl + hp + wt)
m1.r <- as.lmr(m1)

## The function is currently defined as
function(x) {
  library(lmtest)
  library(sandwich)
  b <- coeftest(x, vcov. = vcovHC(x, "HC1"))
  return(b)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
