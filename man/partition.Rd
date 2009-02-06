\name{partition}
\alias{partition}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ The Coarsest Partition of a Finite Sequence of Sets for Which
Only Consecutive Sets May Overlap }
\description{
  The function computes the coarsest partition of 
a finite sequence of sets for which only consecutive sets may overlap. }
\usage{
partition(ms)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ms}{the sequence of finite sets whose coarsest partition is
required. These sets must be entered in the order under which only
consecutive sets may have non-empty intersection.}
}
%- \details{
%-  ~~ If necessary, more details than the description above ~~
%- }
\value{ A list comprising the sets that make up the coarsest
 partition.}
%-  ~Describe the value returned
%-  If it is a LIST, use
%-  \item{comp1 }{Description of 'comp1'}
%-  \item{comp2 }{Description of 'comp2'}
%-  ...
%- }
%- \references{ ~put references to the literature/web site here ~ }
\author{ Kwang Woo Ahn and Kung-Sik Chan }
%- \note{ ~~further notes~~ 
%- ~Make other sections like Warning with \section{Warning }{....} ~
%- }
\seealso{ \code{\link{part}} and \code{\link{block.gibbs}} }
\examples{
ms<-list(c(3,4),c(5,6,7),c(6,7,8,9))
partition(ms)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{arith}
