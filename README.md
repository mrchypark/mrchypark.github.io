# mrchypark's blog with distill

## what is distill

Distill for R Markdown is a web publishing format optimized for scientific and technical communication. <https://rstudio.github.io/distill/>

## how to

```R
purrr::map(grep("*.Rmd", fs::dir_ls("_post", recurse = T), value=T), ~ rmarkdown::render(.x, encoding = 'UTF-8'))
rmarkdown::render_site(encoding = 'UTF-8')
```

```R
library(dplyr)
grep("*.Rmd", fs::dir_ls("_post", recurse = T), value=T) %>% .[c(1:24, 26:37)] %>% purrr::map( ~ rmarkdown::render(.x, encoding = 'UTF-8'))
```
## remain
25