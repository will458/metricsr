\name{pcp}
\alias{pcp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Percent correctly predicted
}
\description{
Gets fraction correctly predicted for \code{lm} (LPM) and \code{glm} (probit and logit).
}
\usage{
pcp(m, percent, round)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m}{
The estimated model, typically \code{lm} or \code{glm} object.
}
 \item{percent}{
If percentage is desired. Defaults to \code{TRUE}.
}
\item{round}{
Integer. Sets value for rounding. Defaults to 3. If \code{FALSE}, value is not rounded.
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
function(x, percent = T, round = 3)
{
  class <- class(x) == "glm"
  if (class[1] == T) {
    pdata <- predict(x, type = "response")
    a <- caret::confusionMatrix(data = as.numeric(pdata > 0.5), reference = x$y)
    a <- a$overall[1]
  } else {
    pdata <- predict(x, type = "response")
    a <- caret::confusionMatrix(data = as.numeric(pdata > 0.5), reference = model.frame(x)[[1]])
    a <- a$overall[1]
  }
  if (isTRUE(percent)) {
    a <- a * 100
  }
  if (round == 3) {
    a <- round(a, 3)
  }
  if (round != 3 & is.numeric(round)) {
    a <- round(a, round)
  }
  return(a)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
