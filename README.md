# mrchypark's blog with distill

## what is distill

Distill for R Markdown is a web publishing format optimized for scientific and technical communication. <https://rstudio.github.io/distill/>

## how to

```R
rmarkdown::render('./_posts/welcome/welcome.Rmd',  encoding = 'UTF-8')
rmarkdown::render_site('index.Rmd',  encoding = 'UTF-8')
```