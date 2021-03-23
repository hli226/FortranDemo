#' Squared and cubic values
#'
#' This function calculates the squared and cubic values of a positive integer value.
#'
#' @param x the positive integer
#'
#' @details This function requires a single argument, which should be a positive integer value.
#'
#' @examples
#' square.cube(3)
#' square.cube(11)
#' \dontrun{square.cube(123)}
#'
#' @return A list of 2, the first element is the squared value, the second is the cubic value.
#'
#' @references Reference 1...
#' @references Reference 2...
#'
#' @export
square.cube <- function(x) {

  res <- .Fortran("squarecube", x = as.integer(x),
                  square = as.integer(x * x),
                  cube = as.integer(x * x * x))

  return(list(square = res$square, cube = res$cube))
}
