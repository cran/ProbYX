\name{MLEs}
\alias{MLEs}
\title{Maximum likelihood estimates of the stress-strength model R = P(Y<X).}
\description{
Compute maximum likelihood estimates of R, considered as the parameter of interest.
Maximum likelihood estimates of the nuisance parameter are also supplied. 
}
\usage{
MLEs(ydat, xdat, distr)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ydat}{
	data vector of the sample measurements from Y.
}
  \item{xdat}{
	data vector of the sample measurements from X.
}
  \item{distr}{
	character string specifying the type of distribution assumed for Y and X. Possible choices for \code{distr} are "exp" (default)
	for the one-parameter exponential, "norm_EV" and "norm_DV" for the Gaussian distribution with,
	respectively, equal or unequal variances assumed for the two random variables. 
}
}
\details{
	The two independent random variables Y and X with given distribution
	\code{distr} are measurements of a certain characteristics on two different populations.
	For the relationship of the parameter of interest (R) and nuisance parameters with 
	the original parameters of \code{distr}, look at the details in \code{\link{loglik}}.
}
\value{
	Vector of estimetes of the nuisance parameters and the R quantity (parameter of interest), respectively.
}
\references{
      Kotz S, Lumelskii Y, Pensky M. (2003). The Stress-Strength Model and its Generalizations. Theory and Applications. World Scientific, Singapore.
}
\author{
	Giuliana Cortese
}
\seealso{
	\code{\link{loglik}}, \code{\link{Prob}}
}
\examples{
	# data from the first population
	Y <- rnorm(15, mean=5, sd=1)        
	# data from the second population
    X <- rnorm(10, mean=7, sd=1.5)      
    # vector of MLEs for the nuisance parameters and the quantity R
    MLEs(Y, X, "norm_DV")  
}
\keyword{maximum likelihood estimate}
\keyword{Stress-strength reliability}
\keyword{estimates}
