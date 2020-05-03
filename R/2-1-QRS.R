###########################################################
### QRS Test

#' Quantile Rank Score Test based on gene-specific delta
#'
#' @param x the covariate for the nuisance parameters, and x does not contain the intercept.
#' @param z the covariate for the parameter(s) of interest.
#' @param y the response variable.
#' @param subject indicates the ID or number of arrays/subjects.
#' @param tau the quantile level.
#'
#' @return Returns a \code{list} object that contains:
#'
#'   QRSi : p-value of the quantile rank score test which ignores the dependence entirely, such that delta = tau^2
#'
#'   QRS0 : p-value of the quantile rank score test, where delta is estimated by using the residuals obtained under H0
#'
#'   QRS1 : p-value of the quantile rank score test, where delta is estimated by using the residuals obtained under H1
#'
#'   sn   : the quantile rank score
#'
#'   Qni, Qn0, Qn1: the variance-covariance of sn for methods QRSi, QRS0 and QRS1, respectively
#'
#'   Tni, Tn0, Tn1: the test statistic values for methods QRSi, QRS0 and QRS1, respectively
#'
#'   beta: the quantile estimate for z
#'
#' @importFrom stats model.matrix
#' @importFrom stats pchisq
#'
#' @export
QRS <- function(x, z, y, subject, tau = 0.5) {

  if(is.factor(x) == TRUE) x <- stats::model.matrix(~ -1 + x)[ ,-1]
  if(is.factor(z) == TRUE) z <- stats::model.matrix(~ -1 + z)[ ,-1]
  if(is.factor(subject) == TRUE) subject <- stats::model.matrix(~ -1 + subject)
  if(is.vector(subject) == TRUE) subject <- stats::model.matrix(~ -1 + factor(subject))
  q <- qr(z)$rank

  x <- cbind(1, x)
  p <- qr(x)$rank
  n <- length(y)

  if(p == 1) dsol0 <- dsolu.br(x, y, tau = tau, interp = FALSE)
  if(p > 1)  dsol0 <- dsolu.br(x, y, tau = tau, interp = TRUE)
  an0 <- dsol0$dsol
  bn0 <- an0 - (1 - tau)

  if(p == 1) zstar <- as.matrix(qr.resid(qr(x[ ,-1]), z))
  if(p > 1)  zstar <- as.matrix(qr.resid(qr(x), z))
  sn <- 1/sqrt(n)*crossprod(zstar, bn0)
  P1 <- crossprod(zstar)
  P2 <- t(zstar) %*% subject %*% t(subject) %*% zstar - P1

  Qni <- 1/n*P1*tau*(1 - tau)
  Tni <- t(sn) %*% solve(Qni) %*% sn
  QRSi <- 1 - stats::pchisq(Tni, q)

  dsol1 <- dsolu.br(cbind(x, z), y, tau = tau, interp = FALSE)

  #  if(p==1) dsol1 = dsolu.br(cbind(x,z), y, tau = tau, interp = FALSE)
  #  if(p>1)  dsol1 = dsolu.br(cbind(x,z), y, tau = tau, interp = TRUE)
  an1 <- dsol1$dsol
  beta <- dsol1$coeff[-(1:p)]
  bn1 <- an1 - (1 - tau)
  delta0 <- delta.est(an0, subject, p, tau)
  delta1 <- delta.est(an1, subject, p, tau)

  Qn0 <- Qni + 1/n*P2 * as.numeric(-tau^2 + delta0)
  Tn0 <- t(sn) %*% solve(Qn0) %*% sn
  QRS0 <- 1 - pchisq(Tn0, q)

  Qn1 <- Qni + 1/n*P2 * as.numeric(-tau^2 + delta1)
  Tn1 <- t(sn) %*% solve(Qn1) %*% sn
  QRS1 <- 1 - pchisq(Tn1, q)

  out = list(delta0 = delta0, delta1 = delta1,
             QRSi = QRSi, QRS0 = QRS0, QRS1 = QRS1, beta=beta,
             Tni = Tni, Tn0 = Tn0, Tn1=Tn1, sn = sn,
             Qni = Qni, Qn0 = Qn0, Qn1=Qn1, P1=P1, P2=P2,n=n)
  return(out)
}

delta.est <- function(an, subject, p, tau) {

  # subject is a matrix of n by nsubj
  K <- apply(subject, 2, sum)  # the number of repeats within each subject
  delta <- (t(1 - an) %*% subject %*% t(subject) %*% (1 - an) -
              crossprod(1 - an))/(sum(apply(as.matrix(K), 1, function(x) x*(x - 1))) - p)
  delta <- min(max(tau^2, delta), tau)
  return(delta)
}

dsolu.br <- function (x, y, tau = 0.5, interp = TRUE) {

  # obtain the dual solution at a single quantile level
  # the first column of x contains all 1's
  # if interp=FALSE, then do not include the intercept
  # this function was modified based on the function "rq.fit.br" in quantreg package
  tol <- .Machine$double.eps^(2/3)
  eps <- tol
  big <- .Machine$double.xmax
  x <- as.matrix(x)
  if(interp == FALSE) x <- x[, -1]
  x <- as.matrix(x)
  p <- ncol(x)
  n <- nrow(x)
  nsol <- 2
  ndsol <- 2
  if(tau < 0 || tau > 1) warning("Stop. tau can only be (0,1)")
  if(tau > 0 & tau < 1) {
    lci1 <- FALSE
    qn <- rep(0, p)
    cutoff <- 0
  }
  Z <- .Fortran("rqbr", as.integer(n), as.integer(p), as.integer(n + 5), as.integer(p + 3), as.integer(p + 4), as.double(x),
                as.double(y), as.double(tau), as.double(tol), flag = as.integer(1),
                coef = double(p), resid = double(n), integer(n), double((n + 5) * (p + 4)), double(n), as.integer(nsol), as.integer(ndsol),
                sol = double((p + 3) * nsol), dsol = double(n * ndsol),
                lsol = as.integer(0), h = integer(p * nsol), qn = as.double(qn),
                cutoff = as.double(cutoff), ci = double(4*p), tnmat = double(4*p), as.double(big), as.logical(lci1), PACKAGE = "quantreg")
  dsol <- Z$dsol[1:n]
  return(list(dsol = dsol, coeff = Z$coef))
}


