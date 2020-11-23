#' used for discrete color palette
#'
#' @param alpha
#' @param begin
#' @param end
#' @param direction
#' @param lp
#'
#' @return discrete palette
#' @export
#'
ggroove_pal <- function(alpha = 1, begin = 0, end = 1, direction = 1,
                        lp = "in_rainbows") {


  function(n) {
    album(n, alpha, begin, end, direction, lp = lp)
  }
}
