if (!require("remotes")) install.packages("remotes")
if (!require("styler")) install.packages("styler")
if (!require("bookdown")) install.packages("bookdown")
if (!require("tinytex")) {
  remotes::install_github("yihui/tinytex")
  tinytex::install_tinytex()
}
# for tikz
if (!require("magick")) install.packages("magick")
if (!require("pdftools")) install.packages("pdftools")
# packages used in the text
if (!require("lavaan")) install.packages("lavaan")
if (!require("OpenMx")) install.packages("OpenMx")
if (!require("Ryacas")) install.packages("Ryacas")
# ensures that the latest version is installed
remotes::install_github("jeksterslab/ramR")
styler::style_dir(filetype = c(".R", ".Rmd"))
