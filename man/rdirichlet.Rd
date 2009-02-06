\name{rdirichlet}
\alias{rdirichlet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Random Sampling from the Dirichlet Distribution }
\description{
  The function outputs a 
random sample from the Dirichlet distribution. 
}
\usage{
rdirichlet(n, alpha)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ Sample size }
  \item{alpha}{ Parameter vector }
}
%- \details{
%-  ~~ If necessary, more details than the description above ~~
%- }
%- \value{
%-  ~Describe the value returned
%-  If it is a LIST, use
%-  \item{comp1 }{Description of 'comp1'}
%-  \item{comp2 }{Description of 'comp2'}
%-  ...
%- }
%- \references{ ~put references to the literature/web site here ~ }
\author{ Code is taken from Greg's Miscellaneous Functions (gregmisc). His code was based on code posted by Ben Bolker to R-News on 15 Dec 2000. }
%- \note{ ~~further notes~~ 
%- ~Make other sections like Warning with \section{Warning }{....} ~
%- }
\seealso{ \code{\link{rbeta}} }
\examples{
x <- rdirichlet(10, c(1,2,3) )
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ distribution }

