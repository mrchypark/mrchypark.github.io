library(dplyr)
library(fs)
library(purrr)
library(stringr)

fs::dir_ls("_post") %>%
  grep("*.Rmd",., value = T) -> file

file %>%
  str_split(".Rmd") %>%
  map_chr(~.x[1]) -> dir

dir %>%
  map(~ fs::dir_create(.x))

file %>%
  str_split("[/.]") %>%
  map_chr(~paste0(.x[1],"/", .x[2],"/",.x[2],".",.x[3])) -> newpath

tibble(file, newpath) %>%
  transpose() %>%
  map(~fs::file_copy(.x$file, .x$newpath))
