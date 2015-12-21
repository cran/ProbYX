\name{ROC.plot}
\alias{ROC.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Estimated ROC curves}
\description{
	Plot of ROC curves estimated under parametric model assumptions
	on the continuous diagnostic marker.
}
\usage{
ROC.plot(ydat, xdat, distr = "exp", method = "RPstar", mc = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ydat}{
	data vector of the diagnostic marker measurements on the sample of non-diseased individuals (from Y).
}
  \item{xdat}{
	data vector of the diagnostic marker measurements on the sample of diseased individuals (from X).
}
  \item{distr}{
	character string specifying the type of distribution assumed for Y and X. Possible choices for \code{distr} are "exp" (default)
	for the one-parameter exponential, "norm_EV" and "norm_DV" for the Gaussian distribution with,
	respectively, equal or unequal variances assumed for the two random variables. 
}
  \item{method}{
	character string specifying the methodological approach used for estimating the
	probability R, which is here interpreted as the area under the ROC curve (AUC). 
	The argument \code{method} can be set equal to "Wald", "RP" or RPstar" (default), according as inference 
	is based on the Wald statistic, the signed log-likelihood ratio statistic (directed likelihhod, \eqn{r_p}) or
	the modified signed log-likelihood ratio statistic (modified directed likelihood, \eqn{r_p^*}), respectively.
	For estimating the ROC curve parametrically, methods "Wald" and "RP" are equivalent and supply
	maximum likelihood estimation (MLE), whereas, by using method "RPstar", estimate of the ROC
	curve is based on the modified signed log-likelihood ratio statistic (\eqn{r_p^*}).
	See \code{\link{rpstar}} for details on this statistic.
}
  \item{mc}{
	a numeric value indicating single or multiple plots in the same figure.
	In case \code{mc} is equal to 1 (default), only the method specified in \code{method}
	is applied and the corresponding estimated ROC curve is plotted. If \code{mc} 
	is different from 1, both MLE and \eqn{r_p^*}-based methods are applied, and two differently
	estimated ROC curves are plotted.
}
}
\details{
	If \code{mc} is different from 1, \code{method} does not need to be specified.
}
\value{
	Plot of ROC curves
}
\references{
	Cortese G., Ventura L. (2013). Accurate higher-order likelihood inference on \eqn{P(Y<X)}. Computational Statistics, 28:1035-1059.
}
\author{
	Giuliana Cortese
}
\note{
	The two independent random variables Y and X with given distribution
	\code{distr} are measurements of the diagnostic marker on the diseased
      and non-diseased subjects, respectively.\cr
	In "Wald" method, or equivalently "RP" method,  MLEs for parameters of the Y and X distributions
	are computed and then used to estimate specificity and sensitivity.
	These measures are evaluated as \eqn{P(Y<t)} and \eqn{P(X>t)}, respectively.\cr
	In "RPstar" method, parameters of the Y and X distributions are estimated 
	from the \eqn{r_p^*}-based estimate of the AUC.	
}
\seealso{
	\code{\link{Prob}}
}
\examples{
	# data from the non-diseased population
	Y <- rnorm(15, mean=5, sd=1)       
	# data from the diseased population
	X <- rnorm(10, mean=7, sd=1.5)      
 	ROC.plot(Y, X, "norm_DV", method = "RP", mc = 2)
}
\keyword{ROC curve}
\keyword{area under the ROC curve}
