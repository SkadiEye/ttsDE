###########################################################
### TTS

#' A tail-based test statistics (TTS).
#'
#' @param n xxx
#' @param j xxx
#' @param data xxx
#' @param tau xxx
#'
#' @return Returns a \code{list} object that the model solution.
#'
#' @importFrom stats residuals
#' @importFrom quantreg rq
#' @importFrom stats as.formula
#' @importFrom stats sd
#' @importFrom stats IQR
#' @importFrom stats dnorm
#' @importFrom utils combn
#' @importFrom stats pnorm
#'
#' @export
TTS <- function(n, j, data, tau) {

  # browser()
  column <- ncol(data$ci)
  Z1 <- data$z1
  # Z1 <- data$exon_count_CPM
  Di <- data$di
  Ci <- data$ci
  K <- ncol(Ci)
  n0 <- n1 <- n/2
  ID <- rep(1:(n1*2), each = j)
  # Ci <- cbind(rep(1, n1*j1*2), Ci)
  xname <- paste(paste0("Ci[,", 1:column,"]"), collapse = "+")
  fmla <- stats::as.formula(paste("Z1 ~ Di+", xname, collapse = "+"))

  #  Z2 <- NULL
  #  for(i in 1:(2*n1)){
  #    Z2<-c(Z2,sum(Z1[(1+(i-1)*j1):(i*j1)]))
  #  }
  #  offset<-1
  #  log2fc<-log2(sum(Z2[1:n1])+offset)-log2(sum(Z2[(n1+1):(2*n1)])+offset)

  trt <- (1:50)*2 - 1
  con <- (1:50)*2

  ei <- stats::residuals(quantreg::rq(fmla, tau = tau))
  parm <- summary(quantreg::rq(fmla, tau = tau))
  #   parm$coef[,1]<-c(4,0,1)
  #   ei<-data$res

  #   QRS(x=Ci,z=Di,y=Z1,subject=ID,tau=0.5)
  #    x=Ci
  #    z=Di
  #    y=Z1
  #   subject=ID


  #  aa<-rq.fit.br(cbind(1,Ci,Di), Z1, tau=0.5, alpha=0.1, ci=FALSE, iid=F, interp=TRUE, tcrit=TRUE)
  #  aa$coefficients
  #    test <- data.frame(Z1=Z1 , Di=Di, Ci=Ci, ID = ID)
  #    fit.lqmm <- lqmm(fixed = Z1 ~ Di+Ci, random = ~ 1, group =ID ,nK = 15,
  #                     data = test, tau = c(0.5,0.75), type = "normal", covariance="pdCompSymm")
  # fit.lqmm
  #    parm<-fit.lqmm$theta_x
  # fit.lqmm$theta_z
  # summary(fit.lqmm)
  #    ei<-residuals(fit.lqmm)

  C_s <- matrix(rep(0, (column)*nrow(Ci)), ncol = column)
  ###notation###
  for(i1 in 1:(column)) {
    C_s[,i1] <- Ci[, i1] - (1/n1*sum(Ci[,i1]*ifelse(Di == 1, 1, 0))/j)*ifelse(Di == 1, 1, 0) -
      (1/n0*sum(Ci[, i1]*ifelse(Di == 1, 0, 1))/j)*ifelse(Di == 1, 0, 1)
  }

  bw <- min(stats::sd(ei), stats::IQR(ei)/1.34)*0.9*((n0 + n1)*j)^(-0.2)
  fi <- 1/(bw*(n1 + n0)*j)*sum(stats::dnorm(ei/bw))

  S1 <- sum(ifelse(ei < 0, 0, 1)*ifelse(Di == 1, 1, 0))
  S0 <- sum(ifelse(ei < 0, 0, 1)*ifelse(Di == 1, 0, 1))

  C_b1 <- rep(0, (column))
  C_b0 <- rep(0, (column))
  for(i1 in 1:(column)) {
    C_b1[i1] <- 1/S1*sum(Ci[, i1]*ifelse(Di == 1, 1, 0)*ifelse(ei < 0, 0, 1))
    C_b0[i1] <- 1/S0*sum(Ci[, i1]*ifelse(Di == 1, 0, 1)*ifelse(ei < 0, 0, 1))
  }

  w1 <- 1/S1*ifelse(ei < 0, 0, 1)
  w0 <- 1/S0*ifelse(ei < 0, 0, 1)

  ####COVES Test statistics###
  coves1 <- sum(w1*(Z1 - as.matrix(Ci) %*% matrix(parm$coef[3:(3 + column - 1), 1]))*ifelse(Di == 1, 1, 0))
  coves0 <- sum(w0*(Z1 - as.matrix(Ci) %*% matrix(parm$coef[3:(3 + column - 1), 1]))*ifelse(Di == 1, 0, 1))
  #  coves1<-sum(w1*(Z1-as.matrix(Ci)%*%matrix(parm[3]))*ifelse(Di==1,1,0))
  #  coves0<-sum(w0*(Z1-as.matrix(Ci)%*%matrix(parm[3]))*ifelse(Di==1,0,1))

  diff <- coves1 - coves0

  ###C_i variance term###
  ei_I <- ifelse(ei < 0, 1, 0)

  if(j != 1) {

    zeta <- 0
    for(i1 in 1:(n1 + n0)) zeta <- zeta + sum(apply(t(utils::combn(ei_I[(1 + j*(i1 - 1)):(j*i1)], 2)), 1, prod))
    zeta <- zeta*((n1 + n0)*j*(j - 1)/2 - column)^(-1)

    cterm <- 0
    for(i1 in 1:(n1 + n0))
      cterm <- cterm + (C_s[1 + j*(i1 - 1), 1:column] %*% t(C_s[1 + j*(i1 - 1), 1:column]))*(choose(j, 2))*(zeta - (tau)^2)/(j^2)

    ###e_ij variance term new###
    ei_new <- ei*ifelse(ei > 0, 1, 0)
    E1_2_2 <- (sum(ei_new*ifelse(Di == 1, 1, 0))/(n1*j))^2

    ee1 <- 0
    for(i1 in trt) ee1 <- ee1 + sum(apply(t(utils::combn(ei_new[(1 + j*(i1 - 1)):(j*i1)], 2)), 1, prod))
    E1_1_2 <- ee1*((n1)*j*(j - 1)/2)^(-1)
    E0_2_2 <- (sum(ei_new*ifelse(Di == 1, 0, 1))/(n0*j))^2

    ee0 <- 0
    for(i1 in con) ee0 <- ee0 + sum(apply(t(utils::combn(ei_new[(1 + j*(i1 - 1)):(j*i1)], 2)), 1, prod))
    E0_1_2 <- ee0*((n0)*j*(j - 1)/2)^(-1)

    V0_2 <- sum((ei^2)*ifelse(Di == 0, 1, 0)*ifelse(ei > 0, 1, 0)) -
      (n0*j)^(-1)*sum(ei*ifelse(Di == 0, 1, 0)*ifelse(ei > 0, 1, 0))^2 +
      (n1)*j*(j - 1)*(E0_1_2 - E0_2_2)

    V1_2 <- sum((ei^2)*ifelse(Di == 1, 1, 0)*ifelse(ei > 0, 1, 0)) -
      (n1*j)^(-1)*sum(ei*ifelse(Di == 1, 1, 0)*ifelse(ei > 0, 1, 0))^2 +
      (n1)*j*(j - 1)*(E1_1_2 - E1_2_2)

    ### variance ###
    Uf1 <- 0
    for(i1 in 1:(n1 + n0)) Uf1 <- Uf1 + (C_s[(1 + j*(i1 - 1)), 1:column] %*% t(C_s[(1 + j*(i1 - 1)), 1:column])*fi)
    Uf <- solve(Uf1 %*% Uf1)

    Ci_sq <- 0
    for(i1 in 1:(n1 + n0)) Ci_sq <- Ci_sq + (C_s[(1 + j*(i1 - 1)), 1:column] %*% t(C_s[(1 + j*(i1 - 1)), 1:column])*tau*(1 - tau))*j/(j^2)

    ###Ci Ei term###
    ei_new2 <- ifelse(ei < 0, 1, 0)
    E1_2_2 <- rep(sum(ei_new*ifelse(Di == 1, 1, 0))/(n1*j), j)
    E0_2_2 <- rep(sum(ei_new*ifelse(Di == 0, 1, 0))/(n1*j), j)

    C1_2_2 <- NULL
    C0_2_2 <- NULL
    for(i1 in 1:(column)) {
      C1_2_2 <- cbind(C1_2_2, rep(j^(-1)*sum(C_s[, i1]*(tau - ei_new2)*ifelse(Di == 1, 1, 0))/(n1*j),j))
      C0_2_2 <- cbind(C0_2_2, rep(j^(-1)*sum(C_s[, i1]*(tau - ei_new2)*ifelse(Di == 0, 1, 0))/(n1*j),j))
    }

    ce_term1 <- rep(0, column)
    for(i2 in 1:(column)) {
      for(i1 in trt) {
        ce_term_temp1 <- j^(-1)*sum(apply(t(expand.grid(a = ei_new[(1 + j*(i1 - 1)):(j*i1)], b = C_s[(1 + j*(i1 - 1)):(j*i1), i2]*
                                                          (tau - ei_new2[(1 + j*(i1 - 1)):(j*i1)]))), 2, prod))
        ce_term_temp2 <- sum(apply(t(expand.grid(a = E1_2_2, b = C1_2_2[, i2])), 2, prod))
        ce_term1[i2] <- ce_term1[i2] + (ce_term_temp1 - ce_term_temp2)
      }
    }
    ce_term1 <- matrix(ce_term1,ncol = 1)

    ce_term2 <- rep(0, column)
    for(i2 in 1:(column)) {
      for(i1 in con) {
        ce_term_temp1 <- j^(-1)*sum(apply(t(expand.grid(a = ei_new[(1 + j*(i1 - 1)):(j*i1)], b = C_s[(1 + j*(i1 - 1)):(j*i1), i2]*
                                                          (tau - ei_new2[(1 + j*(i1 - 1)):(j*i1)]))), 2, prod))
        ce_term_temp2 <- sum(apply(t(expand.grid(a = E0_2_2, b = C0_2_2[, i2])), 2, prod))
        ce_term2[i2] <- ce_term2[i2] + (ce_term_temp1 - ce_term_temp2)
      }
    }
    ce_term2 <- matrix(ce_term2, ncol = 1)

    #### variance ###
    varT_2 <- (1 - tau)^(-2)*(V1_2*(n1*j)^(-2) + V0_2*(n0*j)^(-2)) +
      (t(C_b1 - C_b0) %*% Uf %*% Ci_sq %*% (C_b1 - C_b0)) +
      2*(t(C_b1 - C_b0) %*% Uf %*% cterm %*% (C_b1 - C_b0)) -
      (1 - tau)^(-1)/(n1*j)*t(C_b1 - C_b0) %*% solve(Uf1) %*% ce_term1 +
      (1 - tau)^(-1)/(n0*j)*t(C_b1 - C_b0) %*% solve(Uf1) %*% ce_term2

    test <- 3
  } else {

    ###e_ij variance term old###
    V0 <- sum((ei^2)*ifelse(Di == 1, 0, 1)*ifelse(ei > 0, 1, 0)) - (n0*j)^(-1)*sum(ei*ifelse(Di == 1, 0, 1)*ifelse(ei > 0, 1, 0))^2
    V1 <- sum((ei^2)*ifelse(Di == 1, 1, 0)*ifelse(ei > 0, 1, 0)) - (n1*j)^(-1)*sum(ei*ifelse(Di == 1, 1, 0)*ifelse(ei > 0, 1, 0))^2

    Uf1 <- 0
    for(i1 in 1:(n1 + n0)) Uf1 <- Uf1 + (C_s[(1 + j*(i1 - 1)), 1:column] %*% t(C_s[(1 + j*(i1 - 1)), 1:column])*fi)
    Uf <- solve(Uf1 %*% Uf1)

    Ci_sq <- 0
    for(i1 in 1:(n1 + n0)) Ci_sq <- Ci_sq + (C_s[(1 + j*(i1 - 1)), 1:column] %*% t(C_s[(1 + j*(i1 - 1)), 1:column])*tau*(1 - tau))*j/(j^2)

    ei_new <- ei*ifelse(ei > 0, 1, 0)
    ei_new2 <- ifelse(ei < 0, 1, 0)
    E1_2_2 <- rep(sum(ei_new*ifelse(Di == 1, 1, 0))/(n1*j), j)
    E0_2_2 <- rep(sum(ei_new*ifelse(Di == 0, 1, 0))/(n1*j), j)

    C1_2_2 <- NULL
    C0_2_2 <- NULL
    for(i in 1:(column)) {
      C1_2_2 <- cbind(C1_2_2, rep(j^(-1)*sum(C_s[, i]*(tau - ei_new2)*ifelse(Di == 1, 1, 0))/(n1*j), j))
      C0_2_2 <- cbind(C0_2_2, rep(j^(-1)*sum(C_s[, i]*(tau - ei_new2)*ifelse(Di == 0, 1, 0))/(n1*j), j))
    }

    ce_term1 <- rep(0, column)
    for(i2 in 1:(column)) {
      for(i1 in 1:n1) {
        ce_term_temp1 <- j^(-1)*sum(apply(t(expand.grid(a = ei_new[(1 + j*(i1 - 1)):(j*i1)], b = C_s[(1 + j*(i1 - 1)):(j*i1), i2]*
                                                          (tau - ei_new2[(1 + j*(i1 - 1)):(j*i1)]))), 2, prod))
        ce_term_temp2 <- sum(apply(t(expand.grid(a = E1_2_2, b = C1_2_2[, i2])), 2, prod))
        ce_term1[i2] <- ce_term1[i2] + (ce_term_temp1 - ce_term_temp2)
      }
    }
    ce_term1 <- matrix(ce_term1, ncol = 1)

    ce_term2 <- rep(0, column)
    for(i2 in 1:(column)) {
      for(i1 in (n1 + 1):(2*n1)) {
        ce_term_temp1 <- j^(-1)*sum(apply(t(expand.grid(a = ei_new[(1 + j*(i1 - 1)):(j*i1)], b = C_s[(1 + j*(i1 - 1)):(j*i1), i2]*
                                                          (tau - ei_new2[(1 + j*(i1 - 1)):(j*i1)]))), 2, prod))
        ce_term_temp2 <- sum(apply(t(expand.grid(a = E0_2_2, b = C0_2_2[, i2])), 2, prod))
        ce_term2[i2] <- ce_term2[i2] + (ce_term_temp1 - ce_term_temp2)
      }
    }
    ce_term2 <- matrix(ce_term2, ncol = 1)

    ### variance ###
    varT_2 <- (1 - tau)^(-2)*(V1*(n1*j)^(-2) + V0*(n0*j)^(-2)) +
      (t(C_b1 - C_b0) %*% Uf %*% Ci_sq %*% (C_b1 - C_b0)) -
      (1 - tau)^(-1)/(n1*j)*t(C_b1 - C_b0) %*% solve(Uf1) %*% ce_term1 +
      (1 - tau)^(-1)/(n0*j)*t(C_b1 - C_b0) %*% solve(Uf1) %*% ce_term2
    test <- 4
  }

  pvalue <- 2*stats::pnorm(-abs((diff)/sqrt(varT_2)))
  return(list(coves = diff, var = varT_2, pvalue = pvalue, type = test))
}
