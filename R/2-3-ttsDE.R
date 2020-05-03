###########################################################
### ttsDE

#' A tail-based test statistics (TTS) for differential expression detection.
#'
#' @param z A matrix of gene expressions.
#' @param d A vector of group allocation.
#' @param c Covariates.
#' @param gene A character vector of gene names, corresponding to each row of z.
#' @param tau Pre-specified tau.
#' @param method Methods included.
#' @param n_core Number of cores in parallel computing.
#'
#' @return Returns a \code{list} object that the model solution.
#'
#' @importFrom stats residuals
#' @importFrom nlme lme
#' @importFrom utils setTxtProgressBar
#' @importFrom utils txtProgressBar
#' @importFrom stats model.matrix
#' @importFrom foreach foreach
#' @importFrom doParallel registerDoParallel
#' @importFrom nlme lmeControl
#' @importFrom foreach "%dopar%"
#'
#' @export
ttsDE <- function(z, d, c, gene, tau,
                  method = c("TTS", "QRS", "QS", "lme"),
                  n_core = 1) {

  gene_list <- unique(gene)
  n <- length(gene_list)
  out <- list()
  for(mmm in method) out[[mmm]] <- rep(0, n)
  nx <- length(d)

  if(n_core == 1) {

    pb <- utils::txtProgressBar(style = 3)
    for(i in 1:n) {

      ind_i <- which(gene %in% gene_list[i])
      zi <- matrix(z[ind_i, ], ncol = dim(z)[2])
      j <- dim(zi)[1]
      count <- sum(apply(zi, 2, sum) == 0)
      # count <- sum(apply(zi, 2, sum)[-dim(z)[2] + 0:1] == 0)

      if(count == 0) {

        z1 <- c(zi)
        di <- rep(d, each = j)
        ci <- apply(c, 2, function(x) rep(x, each = j))

        data <- list(z1 = z1, di = di, ci = ci)

        if("lme" %in% method) {

          id <- rep(1:nx, each = j)
          out[["lme"]][i] <-
            summary(nlme::lme(z1 ~ di + ci, random = list(id = ~ 1), data = c(data, list(id = id)),
                              control = nlme::lmeControl(singular.ok = TRUE, returnObject = TRUE)))$tTable["di", "p-value"]
        }

        if("TTS" %in% method) {

          out[["TTS"]][i] <- TTS(nx, j, data, tau)$pvalue
        }

        if(("QRS" %in% method) || ("QS" %in% method)) {

          id <- rep(1:nx, each = j)
          subject <- stats::model.matrix(~ -1 + factor(id))
          result <- QRS(ci, di, z1, subject, tau = tau)
          if("QRS" %in% method) out[["QRS"]][i] <- result$QRS0
          if("QS" %in% method) out[["QS"]][i] <- result$QRSi
        }
      } else {

        for(mmm in method) out[[mmm]][i] <- NA
      }

      utils::setTxtProgressBar(pb, i/n)
    }
    close(pb)
  } else {

    doParallel::registerDoParallel(cores = n_core)
    res <- foreach::foreach(i = 1:n, .combine = cbind) %dopar% {

      ind_i <- which(gene %in% gene_list[i])
      zi <- matrix(z[ind_i, ], ncol = dim(z)[2])
      j <- dim(zi)[1]
      count <- sum(apply(zi, 2, sum) == 0)
      # count <- sum(apply(zi, 2, sum)[-dim(z)[2] + 0:1] == 0)

      res_i <- numeric(4)

      if(count == 0) {

        z1 <- c(zi)
        di <- rep(d, each = j)
        ci <- apply(c, 2, function(x) rep(x, each = j))

        data <- list(z1 = z1, di = di, ci = ci)

        if("lme" %in% method) {

          id <- rep(1:nx, each = j)
          res_i[1] <-
            summary(nlme::lme(z1 ~ di + ci, random = list(id = ~ 1), data = c(data, list(id = id)),
                              control = nlme::lmeControl(singular.ok = TRUE, returnObject = TRUE)))$tTable["di", "p-value"]
        } else {

          res_i[1] <- NA
        }

        if("TTS" %in% method) {

          res_i[2] <- TTS(nx, j, data, tau)$pvalue
        } else {

          res_i[2] <- NA
        }

        if(("QRS" %in% method) || ("QS" %in% method)) {

          id <- rep(1:nx, each = j)
          subject <- stats::model.matrix(~ -1 + factor(id))
          result <- QRS(ci, di, z1, subject, tau = tau)
          if("QRS" %in% method) {
            res_i[3] <- result$QRS0
          } else {
            res_i[3] <- NA
          }
          if("QS" %in% method) {
            res_i[4] <- result$QRSi
          } else {
            res_i[4] <- NA
          }
        } else {

          res_i[3] <- res_i[4] <- NA
        }

        res_i
      } else {

        rep(NA, 4)
      }
    }

    colnames(res) <- NULL
    if("lme" %in% method) out[["lme"]] <- res[1, ]
    if("TTS" %in% method) out[["TTS"]] <- res[2, ]
    if("QRS" %in% method) out[["QRS"]] <- res[3, ]
    if("QS" %in% method) out[["QS"]] <- res[4, ]
  }

  return(out)
}
