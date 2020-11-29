
#' scale_fill_album_d
#'
#' Create a discrete fill based on an album
#'
#' @param ...
#' @param alpha
#' @param begin
#' @param end
#' @param direction
#' @param album the album selected, e.g. album = "in_rainbows"
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
scale_fill_album_d <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", values = NULL,
                                   space = "Lab", na.value = "grey50",
                                   guide = "colourbar", aesthetics = "fill",
                                   discrete = TRUE) {


  ggplot2::discrete_scale(aesthetics, "album",
                          ggroove_pal(alpha, begin, end, direction, album))

}

#' scale_fill_album_c
#'
#' #' Create a continuous fill based on an album

#'
#' @param ...
#' @param alpha
#' @param begin
#' @param end
#' @param direction
#' @param album the album selected, e.g. album = "in_rainbows"
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
scale_fill_album_c <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", values = NULL,
                                   space = "Lab", na.value = "grey50",
                                   guide = "colourbar", aesthetics = "fill",
                                   discrete = TRUE) {


  ggplot2::scale_fill_gradientn(colours =
                                  album(256, alpha, begin, end, direction, lp = album))


}
