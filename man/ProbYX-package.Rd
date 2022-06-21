\name{ProbYX-package}
\Rdversion{1.1}
\alias{ProbYX-package}
\alias{ProbYX}
\docType{package}
\title{Inference on the stress-strength model R = P(Y<X)}
\description{
	Compute confidence intervals and point estimates for R,     
	under parametric model assumptions for Y and X. 
      Y and X are two independent continuous  random variables from two different populations.    
}
\details{
\tabular{ll}{
Package: \tab ProbYX\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2012-03-20\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
	The package can be used for computing accurate confidence intervals and 
	point estimates for the stress-strength (reliability) model R = P(Y<X); maximum likelihood estimates, Wald statistic, signed 
	log-likelihood ratio statistic and its modified version ca be computed.\cr
      The main function is \code{Prob}, which evaluates confidence intervals and 
	point estimates under different approaches and parametric assumptions.
}
\author{Giuliana Cortese

Maintainer: Giuliana Cortese \email{gcortese@stat.unipd.it}
}
\references{
	Cortese G., Ventura L. (2013). Accurate higher-order likelihood inference on P(Y<X). Computational Statistics, 28:1035-1059.\cr
	
      Kotz S, Lumelskii Y, Pensky M. (2003). The Stress-Strength Model and its Generalizations. 
	Theory and Applications. World Scientific, Singapore.
}
\examples{
	 # data from the first population
	 Y <- rnorm(15, mean=5, sd=1)    
	 # data from the second population
	 X <- rnorm(10, mean=7, sd=1.5)      
     level <- 0.01        # \eqn{\alpha} level 
     # estimate and confidence interval under the assumption of two
     # normal variables with different variances.
	 Prob(Y, X, "norm_DV", "RPstar", level)   
	 # method has to be set equal to "RPstar".
}
\keyword{stress-strength model}
