\name{rp}
\alias{rp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Signed log-likelihood ratio statistic}
\description{
	Compute the signed log-likelihood ratio statistic (\eqn{r_p}) for a given value
	of the stress strength R = P(Y<X), that is the parameter of interest,
	under given parametric model assumptions. 
}
\usage{
rp(ydat, xdat, psi, distr = "exp")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ydat}{
	data vector of the sample measurements from Y.
}
  \item{xdat}{
	data vector of the sample measurements from X.
}
  \item{psi}{
	scalar for the parameter of interest. It is the value of R, treated as a parameter 
	under the parametric model construction. 	
}
  \item{distr}{
	character string specifying the type of distribution assumed for Y and X. 
	Possible choices for \code{distr} are "exp" (default) for the one-parameter exponential, 
	"norm_EV" and "norm_DV" for the Gaussian distribution with, respectively, 
	equal or unequal variances assumed for the two random variables. 
}
}
\details{
	The two independent random variables Y and X with given distribution
	\code{distr} are measurements of the diagnostic marker on the diseased
      and non-diseased subjects, respectively.
	For the relationship of the parameter of interest (R) and nuisance parameters with 
	the original parameters of \code{distr}, look at the details in \code{\link{loglik}}.
}
\value{
	Value of the signed log-likelihood ratio statistic \eqn{r_p}.
}
\references{
	Cortese G., Ventura L. (2013). Accurate higher-order likelihood inference on P(Y<X). Computational Statistics, 28:1035-1059.
	
	Severini TA. (2000). Likelihood Methods in Statistics. Oxford University Press, New York.\cr

	Brazzale AR., Davison AC., Reid N. (2007). Applied Asymptotics. Case-Studies in Small Sample Statistics. Cambridge University Press, Cambridge.
}
\author{
	Giuliana Cortese
}
\note{
	The \eqn{r_p} values can be also used for testing statistical hypotheses on the probability R.
}
\seealso{
	\code{\link{wald}}, \code{\link{rpstar}}, \code{\link{MLEs}}, \code{\link{Prob}}
}
\examples{
	# data from the first population
	Y <- rnorm(15, mean=5, sd=1)        
	# data from the second population
	X <- rnorm(10, mean=7, sd=1.5)      
	# value of \eqn{r_p} for \code{psi=0.9}
	rp(Y, X, 0.9,"norm_DV")             
}
\keyword{signed log-likelihood ratio}
\keyword{stress-strength reliability}