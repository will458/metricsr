\name{adj_r_squared}
\alias{adj_r_squared}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Extract adjusted R squared
%%  ~~function to do ... ~~
}
\description{
Automatically extracts adjusted R squared from lm object. Value is rounded to 3 decimal points.
}
\usage{
adj_r_squared(m)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m}{
lm object
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
numeric
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
adj_r_squared(m1)

## The function is currently defined as
function (m)
{
    round(summary(lm(model.frame(m)))$adj.r.squared, 3)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
