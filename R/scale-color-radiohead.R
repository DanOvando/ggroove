
#' scale_color_radiohead_d
#' Create a discrete color scale based on a selected radiohead album
#'
#' @param ...
#' @param alpha
#' @param begin
#' @param end
#' @param direction
#' @param album the radiohead album to select, e.g. album = "ok_computer"
#' @param values
#' @param space
#' @param na.value
#' @param guide
#' @param aesthetics
#' @param discrete
#'
#' @return
#' @export
#'
scale_color_radiohead_d <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", values = NULL,
                                   space = "Lab", na.value = "grey50",
                                   guide = "colourbar", aesthetics = "color",
                                   discrete = TRUE) {


  ggplot2::discrete_scale(aesthetics, "radiohead",
                          ggroove_pal(alpha, begin, end, direction, album))

  # scale_color_gradientn(colours =
  #                         album(256, alpha, begin, end, direction, lp = "in_rainbows"))


}

#' scale_color_radiohead_c
#'
#' Create a continuous color scale based on a selected radiohead album
#'
#' @param ...
#' @param alpha
#' @param begin
#' @param end
#' @param direction
#' @param album the radiohead album to select, e.g. album = "ok_computer"
#' @param values
#' @param space
#' @param na.value
#' @param guide
#' @param aesthetics
#' @param discrete
#'
#' @return
#' @export
#'
#' @examples
scale_color_radiohead_c <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", values = NULL,
                                   space = "Lab", na.value = "grey50",
                                   guide = "colourbar", aesthetics = "color",
                                   discrete = TRUE) {



  ggplot2::scale_color_gradientn(colours =
                                  album(256, alpha, begin, end, direction, lp = album))


}

