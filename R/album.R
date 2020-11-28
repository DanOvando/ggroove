#' Generate album color palette
#'
#' @param n
#' @param alpha
#' @param begin
#' @param end
#' @param direction
#' @param lp
#'
#' @return a color palette
#' @export
#'
album <- function(n, alpha = 1, begin = 0, end = 1, direction = 1,
                  lp = "in_rainbows") {

  if (!lp %in% ggroove::ggroove_db$album) {
    stop("This isn't happening. Album name misspelled or not yet available")
  }

  if (begin < 0 | begin > 1 | end < 0 | end > 1) {
    stop("begin and end must be in [0,1]")
  }

  if (abs(direction) != 1) {
    stop("direction must be 1 or -1")
  }

  if (direction == -1) {
    tmp <- begin
    begin <- end
    end <- tmp
  }
  # map <- ggroove::ggroove_db$radiohead[[lp]]

  map <- ggroove::ggroove_db$hex[ggroove_db$album == lp]

  fn_cols <- grDevices::colorRamp(map, space = "Lab",
                                  interpolate = "spline")
  cols <- fn_cols(seq(begin, end, length.out = n)) / 255
  grDevices::rgb(cols[, 1], cols[, 2], cols[, 3], alpha = alpha)
}
