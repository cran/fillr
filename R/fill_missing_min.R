#' Fill missing minimum
#'
#' Fill all missing values in a vector with the minimum value if it is known.
#' @param x The vector to fill
#' @param min_known_n numeric value: the minimum number of not-missing values
#' @param min_known_p numeric value between 0 and 1: the minimum fraction of not-missing values
#'
#' @return a filled vector
#' @export
#'
#' @examples
#' fill_missing_min(c(1, 2, NA))
#' fill_missing_min(c(NA, 1, 2, NA))
fill_missing_min <- function(x, min_known_n = NULL, min_known_p = NULL) {
    fill_missing(x, min_known_n, min_known_p, type = "min")
}
