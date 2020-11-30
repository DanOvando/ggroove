
#' scale_color_radiohead_d
#' Create a discrete color scale based on a selected radiohead album
#'
#' @param ...
#' @param alpha pass through parameter to ggplot
#' @param begin The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param end The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param direction Sets the order of colors in the scale. If 1, the default, colors are as output by album_pal If -1, the order of colors is reversed.
#' @param album the radiohead album to select, e.g. album = "ok_computer"
#' @param aesthetics
#'
#' @return
#' @export
#'
scale_color_radiohead_d <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", aesthetics = "color") {


  ggplot2::discrete_scale(aesthetics, "radiohead",
                          ggroove_pal(alpha, begin, end, direction, album),...)

}

#' scale_color_radiohead_c
#'
#' Create a continuous color scale based on a selected radiohead album
#'
#' @param ...
#' @param alpha pass through parameter to ggplot
#' @param begin The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param end The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param direction Sets the order of colors in the scale. If 1, the default, colors are as output by album_pal If -1, the order of colors is reversed.
#' @param album the radiohead album to select, e.g. album = "ok_computer"
#' @param aesthetics
#'
#' @return
#' @export
#'
scale_color_radiohead_c <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", n  = 256) {



  ggplot2::scale_color_gradientn(colours =
                                  album_pal(n, alpha, begin, end, direction, lp = album),...)


}

