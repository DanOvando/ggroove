#' used for discrete color palette
#'
#' @param alpha pass through parameter to ggplot
#' @param begin The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param end The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param direction Sets the order of colors in the scale. If 1, the default, colors are as output by album_pal If -1, the order of colors is reversed.
#' @param lp the lp (album) to select, e.g. lp = "ok_computer"
#'
#' @return discrete palette
#' @export
#'
ggroove_pal <- function(alpha = 1, begin = 0, end = 1, direction = 1,
                        lp = "in_rainbows") {


  function(n) {
    album_pal(n, alpha, begin, end, direction, lp = lp)
  }
}
