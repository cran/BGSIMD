\name{part}
\alias{part}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Partition Sets of Two Sets }
\description{
  The function computes the three partition sets of two sets.
That is, given two sets A and B, the function returns the 
set of A-B, AB and B-A where AB is the intersection of A and B, 
A-B=the intersection of A and B complement.
}
\usage{
part(ms1, ms2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ms1}{ A numeric vector. The first set }
  \item{ms2}{ A numeric vector. The second set }
}
%- \details{
%-  ~~ If necessary, more details than the description above ~~
%- }
\value{
A list consisting of the three partition sets.}
%-  ~Describe the value returned
%-  If it is a LIST, use
%-  \item{comp1 }{Description of 'comp1'}
%-  \item{comp2 }{Description of 'comp2'}
%-  ...
%- }
%- \references{ ~put references to the literature/web site here ~ }
\author{ Kwang Woo Ahn and Kung-Sik Chan }
%- \note{ ~~further notes~~ 
%-  ~Make other sections like Warning with \section{Warning }{....} ~
%- }
\seealso{ \code{\link{setdiff}}, \code{\link{intersect}}, and \code{\link{partition}} }
\examples{
ms1<-c(1,3,7,9,10)
ms2<-c(7,9,10,12,13)
part(ms1,ms2) 
}
\keyword{ arith }

