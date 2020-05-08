## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  echo = FALSE,
  message = FALSE,
  collapse = TRUE,
  comment = ""
)
library(magrittr)

## ----pandoc_check, echo=FALSE-------------------------------------------------
if (!rmarkdown::pandoc_available()) {
  cat("pandoc is required to use ymlthis. Please visit https://pandoc.org/ for more information.")
  knitr::knit_exit()
}

## -----------------------------------------------------------------------------
ymlthis::yml(date = FALSE) %>% 
  ymlthis::asis_yaml_output()

## ----echo=TRUE, eval=FALSE----------------------------------------------------
#  library(siteymlgen)
#  init(file="_site.yml")

## ----echo=TRUE, eval=FALSE----------------------------------------------------
#  init(authors = c("Adam","Paul"),
#       left="yes",
#       dir="~/Documents/siteymlgen/inst/extdata/",
#       navbar_title = "Main title",
#       title = "hello",
#       categories=c("r", "reprodicibility"),
#       toc=TRUE,
#       toc_depth = 3,
#       file="_site.yml")

## ----eval=FALSE---------------------------------------------------------------
#  dir.create(paste0(getwd(), "/test"))
#  file.copy(system.file("extdata", package="siteymlgen"), paste0(getwd(), "/test"), recursive = TRUE)
#  

