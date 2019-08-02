
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fillr

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/jelger12/fillr.svg?branch=master)](https://travis-ci.org/jelger12/fillr)
[![Codecov test
coverage](https://codecov.io/gh/jelger12/fillr/branch/master/graph/badge.svg)](https://codecov.io/gh/jelger12/fillr?branch=master)

<!-- badges: end -->

Fillr is an R package. The goal of fillr is to edit vectors to fill
missing values, based on the vector itself. These functions are best
used on variables within a grouped data frame.

## Installation

You can install fillr from github with:

``` r
devtools::install_github("jelger12/fillr")
```

## Example

When you want to fill values in a vector with another value, the fillr
functions can be used to impute all NA values based on some set rules.

Fill the NA with the minimum, maximum or last value

``` r
fillr::fill_missing_min(c(1, 2, 1, 1, NA))
#> [1] 1 2 1 1 1
fillr::fill_missing_max(c(1, 2, 1, 1, NA))
#> [1] 1 2 1 1 2
fillr::fill_missing_last(c(1, NA, 1, 2, NA))
#> [1] 1 2 1 2 2
```

Fill the NA with the same value, only when all non-NA values are the
same

``` r
fillr::fill_missing_strict(c(1, NA, 1, 1, NA))
#> [1] 1 1 1 1 1
fillr::fill_missing_strict(c("a", NA, "a", "a", NA))
#> [1] "a" "a" "a" "a" "a"
```

Fill the NA with the previous value (repeating with multiple repeating
NA)

``` r
fillr::fill_missing_previous(c(1, NA, 1, 2, NA, NA))
#> [1] 1 1 1 2 2 2
```