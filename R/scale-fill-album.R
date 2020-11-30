
#' scale_fill_album_d
#'
#' Create a discrete fill based on an album
#'
#' @param ...
#' @param alpha pass through parameter to ggplot
#' @param begin The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param end The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param direction Sets the order of colors in the scale. If 1, the default, colors are as output by album_pal If -1, the order of colors is reversed.
#' @param album the album to select, e.g. album = "ok_computer"
#' @param aesthetics
#'
#' @return
#' @export
#'
scale_fill_album_d <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", aesthetics = "fill") {


  ggplot2::discrete_scale(aesthetics, "album",
                          ggroove_pal(alpha, begin, end, direction, album),...)

}

#' scale_fill_album_c
#'
#' #' Create a continuous fill based on an album

#' @param ...
#' @param alpha pass through parameter to ggplot
#' @param begin The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param end The (corrected) hue in [0,1] at which the radiohead colormap begins.
#' @param direction Sets the order of colors in the scale. If 1, the default, colors are as output by album_pal If -1, the order of colors is reversed.
#' @param album the album to select, e.g. album = "ok_computer"
#' @param aesthetics
#'
#' @return
#' @export
#'
scale_fill_album_c <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", n = 256) {


  ggplot2::scale_fill_gradientn(colours =
                                  album_pal(n, alpha, begin, end, direction, lp = album),...)


}
