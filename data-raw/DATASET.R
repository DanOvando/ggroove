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
"#f7f8f3ff",
"#dae6f2ff",
"#7b97afff",
"#c16e49ff",
"#745c84ff",
"#3a65bbff",
"#000000ff"
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





