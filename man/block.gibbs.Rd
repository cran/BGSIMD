\name{block.gibbs}
\alias{block.gibbs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Efficient Block Gibbs Sampling with Incomplete Data from a  Multinomial Distribution}
\description{
  The function implements an efficient 
block Gibbs sampling for Bayesian analysis
 with incomplete data from a
 multinomial distribution with k categories labelled as
1,2,...,k, where the incomplete data are assumed to
arise from missing at random. It is assumed that each missing
datum belongs to one and only one of m subsets A1,...,Am 
each of which is a non-empty proper subset of 1,2,..,k.
Moreover, it is assumed that the A's are such that only 
consecutive A's may overlap. 
Specifically, it is assumed that the data consist of counts of
complete data, as well as the counts of partially
observed data belonging to the A's. 
The multinomial parameters are assumed to have a Dirichlet prior.
}
\usage{
block.gibbs(complete, missing, ms, prior, init, n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{complete}{ A numeric vector. The counts of completely
classified observations. The length of the vector is set to be k. 
By default, the multinomial distribution then has k categories
labelled from 1 to k.}
  \item{missing}{ A numeric vector. The counts of partially classified
observations. By default, m equals the length of \code{missing}.}
  \item{ms}{ A list containing the A's listed in the order of the 
counts of data in the A's listed in  \code{missing}. }
  \item{prior}{ A numeric vector. The parameter vector of the Dirichlet prior. }
  \item{init}{ A numeric vector. The initial parametric values
for the Gibbs sampler.} 
  \item{n}{ The number of Gibbs samples. }
}
%- \details{
%-  The function will return the Gibbs samples. 
%- }
%- \value{
%-  ~Describe the value returned
%-  If it is a LIST, use
%-  \item{comp1 }{Description of 'comp1'}
%-  \item{comp2 }{Description of 'comp2'}
%-  ...
%- }
\references{ Ahn, K. W. and Chan, K. S. (2007)  Efficient Markov chain Monte Carlo with incomplete multinomial data, Technical report 382, The University of Iowa }
\author{ Kwang Woo Ahn and Kung-Sik Chan }
%- \note{ ~~further notes~~ 
%-  ~Make other sections like Warning with \section{Warning }{....} ~
%- }
\seealso{ \code{\link{part}}, \code{\link{partition}}, and \code{\link{rdirichlet}}  }
\examples{
complete<-c(20,655,17,15,11,8,5,10,4) # so k=9, and 
# there are 20 observed counts of 1's, 655 counts of 2's, etc.
missing<-c(34,21,18) # so m=3 
ms<-list(c(3,4),c(5,6,7),c(6,7,8,9)) # three kind of
#  missing data, namely, some data are only known to belong to {3,4},
# some known to belong to {5,6,7} and some belong to {6,7,8,9}.
prior<-rep(1,9)
init<-rep(1/9,9)
n<-110 
block.temp<-block.gibbs(complete,missing,ms,prior,init,n) # obtain 110 samples
apply(block.temp[,11:110],1,mean) # burn-in is 10 and obtain the posterior mean
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ distribution }

