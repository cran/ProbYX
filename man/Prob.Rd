\name{Prob}
\alias{Prob}
\title{Estimation of the stress-strength model R = P(Y<X) }
\description{
	Compute confidence intervals and point estimates for the probability R,     
	under parametric model assumptions for Y and X. 
      Y and X are two independent continuous random variable from two different populations.    
}
\usage{
Prob(ydat, xdat, distr = "exp", method = "RPstar", level = 0.05)
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
  \item{method}{
	character string specifying the methodological approach used for inference (confidence intervals and point estimates) on the AUC. 
	The argument \code{method} can be set equal to "Wald", "RP" or RPstar" (default), according as inference 
	is based on the Wald statistic, the signed log-likelihood ratio statistic (directed likelihhod, \eqn{r_p}) or
	the modified signed log-likelihood ratio statistic (modified directed likelihood, \eqn{r_p^*}), respectively.
}
  \item{level}{
	it is the \eqn{\alpha} that supplies the nominal level \eqn{(1-\alpha)} chosen for the confidence interval.
}
}
\value{
	\item{PROB}{
         Point estimate of \eqn{R = P(Y<X)}. 
	This value corresponds to the maximum likelihoos estimate if method "Wald" or "RP" is chosen; otherwise, 
	when method "RPstar" is selected, estimate is obtained from the estimating equaltion \eqn{r_p^* = 0}.
}
	\item{C.Interval}{
          Confidence interval of R at confidence level \eqn{(1-\alpha)}.
}
}
\references{
	Cortese G., Ventura L. (2013). Accurate higher-order likelihood inference on \eqn{R=P(Y<X)}. Computational Statistics, 28:1035-1059.
}
\author{
	Giuliana Cortese
}
\seealso{
	\code{\link{wald}}, \code{\link{rp}}, \code{\link{rpstar}}
}
\examples{
	# data from the first population
	Y <- rnorm(15, mean=5, sd=1)        
	# data from the second population
	X <- rnorm(10, mean=7, sd=1.5)     
    level <- 0.01                  ## \eqn{\alpha} level 
    # estimate and confidence interval under the assumption of two
    # normal variables with different variances.
	Prob(Y, X, "norm_DV", "RPstar", level)  
	# method has to be set equal to "RPstar".
}
\keyword{stress-strength reliability}
\keyword{confidence interval}
\keyword{point estimate}
