## ---- import_pdf ----

library(pdftools)
library(tidyverse)
library(stringr)

# List PDFs
file_names <- list.files("../data/text-analysis/pdf")

# Loop over each file name and read into list
texts_by_page <- list()
for (f in file_names) {
  texts_by_page[[f]] <- 
    pdftools::pdf_text(sprintf("../data/text-analysis/pdf/%s", f))
}

# Read each document into a character vector
texts_by_document <- character()
for (f in file_names) {
  texts_by_document[[f]] <- 
    stringr::str_c(texts_by_page[[f]] %>% 
                     stringr::str_squish(), 
                   collapse = " ")
}



