
# ggroove <img src="logo.png" align="right" width="120" />

<!-- README.md is generated from README.Rmd. Please edit that file -->

[There are two colors in my head](https://youtu.be/NUnXxh5U25Y?t=132).
But we’ll need a few more to make plots.

`ggroove` is a package of color palettes and ggplot2 `scale_` functions
inspired by various album covers.

## Installation

You can install the development version here

``` r
remotes::install_github("danovando/ggroove")
```

## Overview

The first entries in the `ggroove` library come from
[Radiohead’s](https://radiohead.com/library/) studio LPs, which gets a
series of specific functions in the form

`scale_fill_radiohead_d` and `scale_color_radiohead_c`, where `_d`
indicates discrete and `_c` indicates continuous.

As other artists are added, you can use color palettes from any included
album using

`scale_fill_album_d` and `scale_color_album_c`

If you’d like to submit a color palette to `ggroove`, see instructions
[here](https://danovando.github.io/ggroove/articles/contributing.html)

A quick note, there’s a lot of science out there on how to construct
color palettes that accurately convey information.

***These are not those.***

Color schemes that make for great album art are not necessarily designed
to convey information. I wouldn’t recommend using these for continuous
color scales, if you’ve got a few discrete categories rock on.

## Radiohead Palettes

### Pablo Honey

``` r
plot_palette(lp = "pablo_honey")
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

### The Bends

``` r
plot_palette(lp = "the_bends")
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

### OK Computer

``` r

plot_palette(lp = "ok_computer")
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

### Kid A

``` r

plot_palette(lp = "kid_a")
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="100%" />

### Amnesiac

``` r
plot_palette(lp = "amnesiac")
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="100%" />

### Hail to the Thief

``` r
plot_palette(lp = "hail_to_the_thief")
```

<img src="man/figures/README-unnamed-chunk-9-1.png" width="100%" />

### In Rainbows

``` r
plot_palette(lp = "in_rainbows")
```

<img src="man/figures/README-unnamed-chunk-10-1.png" width="100%" />

### The King of Limbs

``` r
plot_palette(lp = "the_king_of_limbs")
```

<img src="man/figures/README-unnamed-chunk-11-1.png" width="100%" />

### A Moon Shaped Pool

``` r
plot_palette(lp = "a_moon_shaped_pool")
```

<img src="man/figures/README-unnamed-chunk-12-1.png" width="100%" />

## How to Use

We’ll use data from `gapminder` and `palmerpenguins` to demonstrate
`ggroove`.

### A continous colorramp

Here’s a continuous colorramp based on OK Computer (again, probably best
not to use `ggroove` for continuous scales\!)

``` r
library(ggplot2)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(ggroove)
library(palmerpenguins)
library(gapminder)

penguins %>% 
  ggplot(aes(bill_length_mm, bill_depth_mm, color = body_mass_g)) + 
  geom_point(size = 4) + 
  scale_color_radiohead_c(album = "ok_computer")
#> Warning: Removed 2 rows containing missing values (geom_point).
```

<img src="man/figures/README-unnamed-chunk-13-1.png" width="100%" />

And some discrete penguins as well

``` r

penguins %>% 
  ggplot(aes(bill_length_mm, bill_depth_mm, color = species)) + 
  geom_point(size = 4) + 
  scale_color_radiohead_d(album = "in_rainbows", direction = 1, name = "test")
#> Warning: Removed 2 rows containing missing values (geom_point).
```

<img src="man/figures/README-unnamed-chunk-14-1.png" width="100%" />

### A better use with discrete Fills

Here’s a more appropriate example showing discrete fills

``` r

gapminder::gapminder %>%
  ggplot(aes(lifeExp, fill =  country)) +
  geom_histogram(show.legend = FALSE) +
  scale_fill_radiohead_d(album = "in_rainbows") +
  theme_minimal() + 
  theme_dark()
#> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

<img src="man/figures/README-unnamed-chunk-15-1.png" width="100%" />

### Other Artists

You can view all the artists / albums currently present in `ggroove` by
examining the `ggroove` database in `ggroove::ggroove_db`

``` r
ggroove_db$artist %>% unique()
#> [1] "radiohead"   "the_beatles"
```

``` r
ggroove_db$album %>% unique()
#>  [1] "in_rainbows"        "ok_computer"        "kid_a"             
#>  [4] "the_king_of_limbs"  "amnesiac"           "hail_to_the_thief" 
#>  [7] "the_bends"          "pablo_honey"        "a_moon_shaped_pool"
#> [10] "the_white_album"
```

At the moment, we only have one non-Radiohead artist / album in the
package, but more to come\!

``` r

gapminder::gapminder %>%
  ggplot(aes(lifeExp, fill =  continent)) +
  geom_histogram(show.legend = TRUE, color = "black") +
  scale_fill_album_d(album = "the_white_album") +
  theme_minimal() + 
  theme_dark()
#> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

<img src="man/figures/README-unnamed-chunk-18-1.png" width="100%" />

## Non-ggplot2 use

I’ve built this package mostly around `ggplot2` users, but base plot
users can use it too.

You can use the `ggroove::album` function to generate a color palette
based on your LP choice.

``` r
continuous_pal <- album_pal(256, lp = "kid_a")
image(volcano, col = continuous_pal)
```

<img src="man/figures/README-unnamed-chunk-19-1.png" width="100%" />

``` r

discrete_pal <- album_pal(6, lp = "a_moon_shaped_pool")

boxplot(count ~ spray, data = InsectSprays, col = discrete_pal)
```

<img src="man/figures/README-unnamed-chunk-20-1.png" width="100%" />

## Credits

Code and concept for this package was adapted from the amazing
[`fishualize`](https://nschiett.github.io/fishualize/index.html) and
[`wesanderson`](https://github.com/karthik/wesanderson) packages.
