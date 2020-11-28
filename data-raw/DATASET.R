## code to prepare `DATASET` dataset goes here
library(tibble)
library(dplyr)

ggroove_db <- tibble(artist = NULL, album = NULL, hex = NULL, order = NULL)


# radiohead ---------------------------------------------------------------



in_rainbows <-
  tibble(
    artist = "radiohead",
    album = "in_rainbows",
    hex = c(
      "#020202ff",
      "#efe955ff",
      "#437ec3ff",
      "#f76a2dff",
      "#52b44bff",
      '#ebb31fff',
      "#ec252dff",
      "#acd8e2ff"
    )
  ) %>%
  mutate(order = 1:nrow(.))


ggroove_db <- ggroove_db %>%
  bind_rows(in_rainbows)


ok_computer <- tibble(artist = "radiohead", album = "ok_computer",hex = c(
"#f7f8f3ff",
"#dae6f2ff",
"#7b97afff",
"#c16e49ff",
"#745c84ff",
"#3a65bbff",
"#000000ff"
)) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(ok_computer)



kid_a <- tibble(artist = "radiohead", album = "kid_a",hex = c(
  "#010101ff",
  "#b01828ff",
  "#a55a23ff",
  "#5d627bff",
  "#1a3f7bff",
  "#e3ebe9ff",
  "#f3f0e8ff"
)) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(kid_a)


kol <- tibble(artist = "radiohead", album = "the_king_of_limbs",hex = c(
  "#B0351F",
  "#F9D836",
  "#7F2F15",
  "#27351B",
  "#141318",
  "#F8F8FA"
)) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(kol)


kol <- tibble(artist = "radiohead", album = "amnesiac",hex = c(
  "#D82723",
  "#F4A961",
  "#D16F49",
  "#E6E6E6",
  "#000000"
)) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(kol)


httt <- tibble(artist = "radiohead", album = "hail_to_the_thief",hex = c(
"#88a2c0ff",
"#f6f5c1ff",
"#20521dff",
"#e13710ff",
"#283488ff",
"#202913ff"
)) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(httt)

bends <- tibble(artist = "radiohead", album = "the_bends",hex = c(
"#010101ff",
"#e8160fff",
"#f2953bff",
"#f5cfa2ff",
"#f5efbbff",
"#efedddff"
)) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(bends)

pablo <- tibble(artist = "radiohead", album = "pablo_honey",hex = c(
"#e2ead2ff",
"#f1da3fff",
"#7dba63ff",
"#ce2117ff",
"#396293ff",
"#2a0a43ff"
)) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(pablo)

moon <- tibble(artist = "radiohead", album = "a_moon_shaped_pool",hex = c(
"#e3e2e7ff",
"#97969bff",
"#555258ff",
"#151311ff",
"#46888bff",
"#c7523eff"
)) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(moon)





# the beatles -------------------------------------------------------------



white_album <- tibble(artist = "the_beatles", album = "the_white_album",hex = c(
  "#fffeefff")) %>%
  mutate(order = 1:nrow(.))

ggroove_db <- ggroove_db %>%
  bind_rows(white_album)




usethis::use_data(ggroove_db, overwrite = TRUE)





