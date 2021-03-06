% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/1-1-LUAD.R
\docType{data}
\name{LUAD}
\alias{LUAD}
\title{The lung adenocarcinoma (LUAD) data}
\format{
A list of items
\describe{
  \item{z}{a matrix of 12859 exons and 100 subjects. }
  \item{d}{a binary vector, group indicator. }
  \item{c}{a 100x3 matrix, including 3 covariates. }
  \item{gane}{a factor, gene names}
}
}
\usage{
LUAD
}
\description{
Accessible at the TCGA public data portal (LUAD),
  in Log2(RPKM) format, at exon level.
}
\keyword{datasets}
