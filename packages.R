if (!requireNamespace("tinytex", quietly = TRUE)) {
  if (!requireNamespace("devtools", quietly = TRUE)) {
    install.packages("jsonlite", repos = "https://cran.rstudio.com/", quiet = TRUE)
    install.packages("httr", repos = "https://cran.rstudio.com/", quiet = TRUE)
    install.packages("memoise", repos = "https://cran.rstudio.com/", quiet = TRUE)
    install.packages("devtools", repos = "https://cran.rstudio.com/", quiet = TRUE)
    cat("devtools installed\n")
  }
  devtools::install_github(c("yihui/tinytex"), quiet = TRUE)
  tinytex::install_tinytex()
}
if (!require("styler")) install.packages("styler")
if (!require("remotes")) install.packages("remotes")
if (!require("magick")) install.packages("magick")
if (!require("pdftools")) install.packages("pdftools")
if (!require("bookdown")) install.packages("bookdown")
if (!require("Ryacas")) install.packages("Ryacas")
# ensures that the latest version is installed
remotes::install_github("jeksterslab/ramR")
styler::style_dir()
