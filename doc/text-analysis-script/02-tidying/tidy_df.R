## ---- tidy_df1 ----

library(tidyverse)
library(tidytext)

class(texts_by_document)
length(texts_by_document)

# Tidy text (from PDFs)
tidy_df <- 
  tibble(doc = names(texts_by_document),
         text = texts_by_document) %>%
  tidytext::unnest_tokens(word, text) %>%
  dplyr::filter(str_detect(word, "[a-z]+")) %>%
  dplyr::count(word, sort = TRUE)

# Code modified from Julia Silge & Robinson, 2017.





