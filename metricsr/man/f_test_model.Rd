\name{f_test_model}
\alias{f_test_model}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
F-test with robust standard errors
}
\description{
Conducts an F-test for a lm object using robust standard errors. Replicates Stata's F-test when the robust setting is specified. Extensions include the f_test_model_p and f_test_model_stat which respectively only return the p-value and the F-statistic.
}
\usage{
f_test_model(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
lm class object
}
}
\details{
Do not fit a coeftest object which resulted from the as.lmr function.
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

data(mtcars)
m1 <- lm(data = mtcars, mpg ~ cyl + hp + wt)
print(f_test_model)
f_test_model_p(m1)
f_test_model_stat(m1)

## The function is currently defined as
function (x)
{
    library(lmtest)
    library(sandwich)
    a <- waldtest(x, vcov = vcovHC(x, "HC1"))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
