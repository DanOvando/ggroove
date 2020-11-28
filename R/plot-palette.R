#' Plot Palette
#'
#' Plots the color palette for the album in question
#'
#' @param lp the album to plot
#'
#' @return a ggplot2 object
#' @export
#'
#' @examples
#'
#' plot_palette(lp = "kid_a")
#'
plot_palette <- function(lp){

pal <- ggroove_db$hex[ggroove_db$album == lp]

pal_plate <- data.frame(x = 1:length(pal), y = 1)

  ggplot(pal_plate,aes(x, y, fill = factor(x))) +
  ggplot2::geom_tile(show.legend = FALSE, color = "black") +
  scale_fill_radiohead_d(album = lp) +
    ggplot2::scale_x_continuous(expand = ggplot2::expansion(add = 0)) +
    ggplot2::scale_y_continuous(expand = ggplot2::expansion(add = 0)) +
    ggplot2::theme(axis.text = ggplot2::element_blank(),
        axis.title = ggplot2::element_blank(),
        axis.ticks = ggplot2::element_blank()) +
    ggplot2::labs(title = lp)

}
