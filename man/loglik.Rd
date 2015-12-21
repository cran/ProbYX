\name{loglik}
\Rdversion{1.1}
\alias{loglik}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Log-likelihood of the bivariate distribution of (Y,X)}
\description{
	Computation of the log-likelihood function of the bivariate distribution (Y,X).
	The log-likelihood is reparametrized with the parameter of interest \eqn{\psi}, corresponding to the quantity R,
	and the nuisance parameter \eqn{\lambda}. 
}
\usage{
loglik(ydat, xdat, lambda, psi, distr = "exp")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ydat}{
	data vector of the sample measurements from Y.
}
  \item{xdat}{
	data vector of the sample measurements from X.
}
  \item{lambda}{
	nuisance parameter vector, \eqn{\lambda}. Values can be determined from the reparameterisation of the original parameters
	of the bivariate distribution chosen in \code{distr}. 
}
  \item{psi}{
	scalar parameter of interest, \eqn{\psi}, for the probability R. Value can be determined from the reparameterisation 
	of the original parameters of the bivariate distribution chosen in \code{distr}. 
}
  \item{distr}{
	character string specifying the type of distribution assumed for \eqn{X_1} and \eqn{X_2}. Possible choices for \code{distr} are "exp" (default)
	for the one-parameter exponential, "norm_EV" and "norm_DV" for the Gaussian distribution with,
	respectively, equal or unequal variances assumed for the two random variables. 
}
}
\details{
	For further information on the random variables Y and X, see help on \code{\link{Prob}}.\cr
	Reparameterisation in order to determine \eqn{\psi} and \eqn{\lambda} depends on the assumed distribution.
	Here the following relashonships have been used:\cr
    \describe{
      \item{Exponential models:}{ 
	     \eqn{\psi= \frac{\alpha}{(\alpha + \beta)}}{\psi= \alpha / (\alpha + \beta)}
           and   \eqn{\lambda = \alpha + \beta}, 
           with  \eqn{Y \sim e^{\alpha}}{Y ~ exp(\alpha)} and \eqn{X \sim e^{\beta}}{X ~ exp(\beta)};
      }

      \item{Gaussian models with equal variances:}{
	     \eqn{\psi = \Phi \left( \frac{\mu_2-\mu_1}{\sqrt{2 \sigma^2}} \right)}{%
                \psi = \Phi (\mu_2 - \mu_1) / \sqrt{2 \sigma^2} }
           and
	     \eqn{\lambda = (\lambda_1,\lambda_2) = ( \frac{\mu_1}{\sqrt{2 \sigma^2}}, \sqrt{2 \sigma^2} )}{%
                \lambda = (\lambda_1, \lambda_2) = ( \mu_1 / \sqrt{2 \sigma^2}, \sqrt{2 \sigma^2} )}, 
           with  
           \eqn{Y \sim N(\mu_1, \sigma^2)}{Y ~ N(\mu_1, \sigma^2)} and  \eqn{X \sim N(\mu_2, \sigma^2)}{X ~ N(\mu_2, \sigma^2)};
      }

	\item{Gaussian models with unequal variances:}{
	     \eqn{\psi = \Phi \left( \frac{\mu_2-\mu_1}{\sqrt{\sigma_1^2 + \sigma_2^2}} \right)}{%
                \psi = \Phi (\mu_2 - \mu_1) / \sqrt{\sigma_1^2 + \sigma_2^2}} 
           and  
	     \eqn{\lambda = (\lambda_1, \lambda_2, \lambda_3) = (\mu_1, \sigma_1^2, \sigma_2^2)}, with  
           \eqn{Y \sim N(\mu_1, \sigma_1^2)}{Y ~ N(\mu_1, \sigma_1^2)} and \eqn{X \sim N(\mu_2, \sigma_2^2)}{X ~ N(\mu_2, \sigma_2^2)}.
      }
    }
    The Standard Normal cumulative distribution function is indicated with \eqn{\Phi}. 
}
\value{
	Value of the log-likelihood function computed in \eqn{\psi=}\code{psi} and \eqn{\lambda=}\code{lambda}.
}
\references{
	Cortese G., Ventura L. (2013). Accurate higher-order likelihood inference on \eqn{P(Y<X)}. Computational Statistics, 28:1035-1059.
}
\author{ Giuliana Cortese}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
	\code{\link{MLEs}}
}
%
\examples{
	# data from the first population
	Y <- rnorm(15, mean=5, sd=1)                  
    # data from the second population      
	X <- rnorm(10, mean=7, sd=1)                        
    mu1 <- 5                                           
    mu2 <- 7
    sigma <- 1
    # parameter of interest, the R probability
    interest <- pnorm((mu2-mu1)/(sigma*sqrt(2)))         
    # nuisance parameters
    nuisance <- c(mu1/(sigma*sqrt(2)), sigma*sqrt(2))    
    # log-likelihood value 
    loglik(Y, X, nuisance, interest, "norm_EV")        
}

\keyword{log-likelihood}
\keyword{MLE}
