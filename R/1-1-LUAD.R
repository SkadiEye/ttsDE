#' The lung adenocarcinoma (LUAD) data
#'
#' Accessible at the TCGA public data portal (LUAD),
#'   in Log2(RPKM) format, at exon level.
#'
#' @format A list of items
#' \describe{
#'   \item{z}{a matrix of 12859 exons and 100 subjects. }
#'   \item{d}{a binary vector, group indicator. }
#'   \item{c}{a 100x3 matrix, including 3 covariates. }
#'   \item{gane}{a factor, gene names}
#' }
"LUAD"
