ttsDE
================

**ttsDE**, A tail-based test statistics (TTS) for differential
expression detection (Paper submitted).

TTS is a tail-based test to identify diffentially expressed genes
between two groups. TTS is a quantile-based model that takes expression
values at exon level, and adjusts for covariates.

# Installation

In R,

``` r
devtools::install_github("SkadiEye/ttsDE")
```

# Example

``` r
suppressMessages(library(ttsDE))
## Load LUAD data
data("LUAD")

set.seed(4321)
## Run TTS on LUAD data, tau = 0.5
(a <- Sys.time()) 
```

    ## [1] "2020-07-01 22:03:45 EDT"

``` r
mod1 <- ttsDE(LUAD$z, LUAD$d, LUAD$c, gene = LUAD$gene, tau = 0.5, method = "TTS")
```

    ##   |                                                                              |                                                                      |   0%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |                                                                      |   1%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=                                                                     |   1%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=                                                                     |   2%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==                                                                    |   2%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==                                                                    |   3%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==                                                                    |   4%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===                                                                   |   4%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===                                                                   |   5%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |====                                                                  |   5%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |====                                                                  |   6%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=====                                                                 |   6%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=====                                                                 |   7%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=====                                                                 |   8%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |======                                                                |   8%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |======                                                                |   9%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=======                                                               |   9%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=======                                                               |  10%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=======                                                               |  11%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |========                                                              |  11%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |========                                                              |  12%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=========                                                             |  12%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=========                                                             |  13%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=========                                                             |  14%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==========                                                            |  14%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==========                                                            |  15%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===========                                                           |  15%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===========                                                           |  16%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |============                                                          |  17%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |============                                                          |  18%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=============                                                         |  18%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=============                                                         |  19%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==============                                                        |  19%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==============                                                        |  20%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==============                                                        |  21%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===============                                                       |  21%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===============                                                       |  22%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in summary.rq(quantreg::rq(fmla, tau = tau)): 40 non-positive fis

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |================                                                      |  22%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |================                                                      |  23%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in summary.rq(quantreg::rq(fmla, tau = tau)): 44 non-positive fis

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |================                                                      |  24%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=================                                                     |  24%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=================                                                     |  25%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==================                                                    |  25%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==================                                                    |  26%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===================                                                   |  26%  |                                                                              |===================                                                   |  27%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===================                                                   |  28%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |====================                                                  |  28%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |====================                                                  |  29%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=====================                                                 |  29%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=====================                                                 |  30%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=====================                                                 |  31%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |======================                                                |  31%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |======================                                                |  32%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=======================                                               |  32%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=======================                                               |  33%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |========================                                              |  34%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |========================                                              |  35%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=========================                                             |  35%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=========================                                             |  36%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==========================                                            |  36%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==========================                                            |  37%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==========================                                            |  38%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===========================                                           |  38%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===========================                                           |  39%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |============================                                          |  39%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |============================                                          |  40%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |============================                                          |  41%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=============================                                         |  41%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=============================                                         |  42%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==============================                                        |  42%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==============================                                        |  43%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==============================                                        |  44%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===============================                                       |  44%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in summary.rq(quantreg::rq(fmla, tau = tau)): 312 non-positive fis

    ##   |                                                                              |===============================                                       |  45%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |================================                                      |  45%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |================================                                      |  46%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=================================                                     |  46%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=================================                                     |  47%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=================================                                     |  48%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==================================                                    |  48%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==================================                                    |  49%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===================================                                   |  49%  |                                                                              |===================================                                   |  50%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===================================                                   |  51%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |====================================                                  |  51%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |====================================                                  |  52%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=====================================                                 |  52%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=====================================                                 |  53%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=====================================                                 |  54%  |                                                                              |======================================                                |  54%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |======================================                                |  55%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=======================================                               |  55%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=======================================                               |  56%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |========================================                              |  56%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |========================================                              |  57%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |========================================                              |  58%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=========================================                             |  58%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=========================================                             |  59%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==========================================                            |  59%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==========================================                            |  60%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==========================================                            |  61%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===========================================                           |  61%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===========================================                           |  62%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |============================================                          |  62%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |============================================                          |  63%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |============================================                          |  64%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=============================================                         |  64%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=============================================                         |  65%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==============================================                        |  65%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==============================================                        |  66%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===============================================                       |  67%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===============================================                       |  68%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |================================================                      |  68%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |================================================                      |  69%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=================================================                     |  69%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=================================================                     |  70%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=================================================                     |  71%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==================================================                    |  71%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==================================================                    |  72%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===================================================                   |  72%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===================================================                   |  73%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===================================================                   |  74%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |====================================================                  |  74%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |====================================================                  |  75%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=====================================================                 |  75%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=====================================================                 |  76%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |======================================================                |  76%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |======================================================                |  77%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |======================================================                |  78%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=======================================================               |  78%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |=======================================================               |  79%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |========================================================              |  79%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |========================================================              |  80%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |========================================================              |  81%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=========================================================             |  81%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=========================================================             |  82%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==========================================================            |  82%  |                                                                              |==========================================================            |  83%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===========================================================           |  84%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===========================================================           |  85%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |============================================================          |  85%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |============================================================          |  86%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=============================================================         |  86%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=============================================================         |  87%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=============================================================         |  88%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==============================================================        |  88%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==============================================================        |  89%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===============================================================       |  89%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===============================================================       |  90%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===============================================================       |  91%  |                                                                              |================================================================      |  91%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |================================================================      |  92%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=================================================================     |  92%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=================================================================     |  93%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |=================================================================     |  94%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |==================================================================    |  94%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |==================================================================    |  95%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===================================================================   |  95%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===================================================================   |  96%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |====================================================================  |  96%  |                                                                              |====================================================================  |  97%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |====================================================================  |  98%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |===================================================================== |  98%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |===================================================================== |  99%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ##   |                                                                              |======================================================================|  99%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ##   |                                                                              |======================================================================| 100%

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique
    
    ## Warning in rq.fit.br(x, y, tau = tau, ...): Solution may be nonunique

    ## Warning in rq.fit.br(x, y, tau = tau, ci = TRUE, ...): Solution may be nonunique

``` r
(b <- Sys.time() - a)
```

    ## Time difference of 6.388269 mins

``` r
## Run TTS on LUAD data using 8 cores
(a <- Sys.time()) ## 1.275387 mins
```

    ## [1] "2020-07-01 22:10:09 EDT"

``` r
mod8 <- ttsDE(LUAD$z, LUAD$d, LUAD$c, gene = LUAD$gene, tau = 0.5, method = "TTS", n_core = 8)
(b <- Sys.time() - a)
```

    ## Time difference of 1.322855 mins
