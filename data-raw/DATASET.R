## code to prepare `DATASET` dataset goes here


ggroove_db <- vector("list")

ggroove_db$radiohead$in_rainbows <- c(
"#f7ea4fff",
"#3f88ccff",
"#f86b24ff",
"#4cbf4bff",
"#efb522ff",
"#f4252bff",
"#a6dfe9ff",
"#000201ff",
"#da662eff"
)

ggroove_db$radiohead$ok_computer <- c(
"#f7f4faff",
"#3a4851ff",
"#3a4851ff",
"#6c9cdeff",
"#b1a0c4ff",
"#d7e4f2ff",
"#f7f7f7ff",
"#6f8299ff"
)

ggroove_db$radiohead$kid_a <- c(
  "#A61A26",
  "#7F4314",
  "#010101",
  "#35538F",
  "#ECEBE4",
  "#FFFEEF"
)

ggroove_db$radiohead$king_of_limbs <- c(
  "#B0351F",
  "#F9D836",
  "#7F2F15",
  "#27351B",
  "#141318",
  "#F8F8FA"
)

ggroove_db$radiohead$amnesiac <- c(
  "#D82723",
  "#F4A961",
  "#D16F49",
  "#E6E6E6",
  "#000000")


usethis::use_data(ggroove_db, overwrite = TRUE)



album <- function(n, alpha = 1, begin = 0, end = 1, direction = 1,
                 lp = "in_rainbows") {

  if (!lp %in% names(ggroove_db$radiohead)) {
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
  map <- ggroove_db$radiohead[[lp]]

  fn_cols <- grDevices::colorRamp(map, space = "Lab",
                                  interpolate = "spline")
  cols <- fn_cols(seq(begin, end, length.out = n)) / 255
  grDevices::rgb(cols[, 1], cols[, 2], cols[, 3], alpha = alpha)
}


ggroove_pal <- function(alpha = 1, begin = 0, end = 1, direction = 1,
                     lp = "in_rainbows") {


  function(n) {
    album(n, alpha, begin, end, direction, lp = lp)
  }
}

scale_color_radiohead <- function(..., alpha = 1, begin = 0, end = 1,
                                 direction = 1, album = "in_rainbows", values = NULL,
                                 space = "Lab", na.value = "grey50",
                                 guide = "colourbar", aesthetics = "color",
                                 discrete = TRUE) {


  ggplot2::discrete_scale(aesthetics, "radiohead",
                 ggroove_pal(alpha, begin, end, direction, album))

  # scale_color_gradientn(colours =
  #                         album(256, alpha, begin, end, direction, lp = "in_rainbows"))


}

scale_fill_radiohead_d <- function(..., alpha = 1, begin = 0, end = 1,
                                  direction = 1, album = "in_rainbows", values = NULL,
                                  space = "Lab", na.value = "grey50",
                                  guide = "colourbar", aesthetics = "fill",
                                  discrete = TRUE) {


  ggplot2::discrete_scale(aesthetics, "radiohead",
                          ggroove_pal(alpha, begin, end, direction, album))

  # scale_color_gradientn(colours =
  #                         album(256, alpha, begin, end, direction, lp = "in_rainbows"))


}

scale_fill_radiohead_c <- function(..., alpha = 1, begin = 0, end = 1,
                                   direction = 1, album = "in_rainbows", values = NULL,
                                   space = "Lab", na.value = "grey50",
                                   guide = "colourbar", aesthetics = "fill",
                                   discrete = TRUE) {

  #
  # ggplot2::discrete_scale(aesthetics, "radiohead",
  #                         ggroove_pal(alpha, begin, end, direction, album))
  #
  ggplot2::scale_fill_gradientn(colours =
                          album(256, alpha, begin, end, direction, lp = album))


}

library(palmerpenguins)
library(ggplot2)

penguins %>%
  ggplot(aes(body_mass_g,flipper_length_mm, fill =  bill_length_mm)) +
  geom_point(shape = 21) +
  scale_fill_radiohead_c(album = "in_rainbows")


penguins %>%
  ggplot(aes(body_mass_g,flipper_length_mm, fill =  island)) +
  geom_point(shape = 21) +
  scale_fill_radiohead_d(album = "king_of_limbs")

gapminder::gapminder %>%
  ggplot(aes(lifeExp, fill =  continent)) +
  geom_histogram(show.legend = TRUE, color = "black") +
  scale_fill_radiohead_d(album = "amnesiac") +
  theme_minimal()



  # scale_color_gradientn(colours =
  #                         album(256, alpha, begin, end, direction, lp = "in_rainbows"))



