## ---- tidy_df2 ----

# Gutenberg Project books
kable(table(g_books$title), format = 'html')

## ---- tidy_df3 ----

library(tidytext)
library(stringr)

# divide into documents, each representing one chapter
reg <- regex("^chapter ", ignore_case = TRUE)
by_chapter <- g_books %>%
  dplyr::group_by(title) %>%
  dplyr::mutate(chapter = cumsum(str_detect(text, reg))) %>%
  dplyr::filter(chapter > 0) %>%
  dplyr::ungroup() %>%
  dplyr::group_by(gutenberg_id, title, chapter) %>%
  dplyr::summarize(text = paste(text, collapse = " "))

## ---- tidy_df4 ----

reg <- "\\S+" # counting all sequences on non-space characters
by_chapter %>% 
  dplyr::group_by(title, chapter) %>%
  dplyr::summarize(words_by_chapter = 
                     stringr::str_count(paste(text, 
                                              collapse = " "), reg)) %>%
  dplyr::ungroup() %>%
  dplyr::group_by(title) %>%
  dplyr::summarize(n_chapters = n(),
            avg_words_by_chapter = mean(words_by_chapter))

## ---- tidy_df5 ----

# split into words
by_chapter_word <- by_chapter %>%
  tidytext::unnest_tokens(word, text)

by_chapter_bigram <- by_chapter %>%
  tidytext::unnest_tokens(bigram, text, 
                token = "ngrams", n = 2)

## ---- tidy_df6 ----

# find document-word counts
word_counts <- by_chapter_word %>%
  dplyr::anti_join(stop_words) %>%
  dplyr::mutate(word = str_extract(word, "[a-z']+")) %>%
  dplyr::filter(!is.na(word)) %>%
  dplyr::count(title, word, sort = TRUE) %>%
  dplyr::ungroup()

## ---- tidy_df7 ----

word_counts %>% 
  dplyr::group_by(title) %>%
  dplyr::top_n(10, n) %>%
  dplyr::ungroup() %>%
  dplyr::mutate(word = reorder(word, n)) %>%
  ggplot(aes(word, n, fill=title)) +
  ggplot2::geom_col(show.legend = FALSE) +
  ggplot2::facet_wrap(~title, scales = "free") +
  ggplot2::labs(y = "10 most frequent words",
       x = NULL) +
  ggplot2::coord_flip()

## ---- tidy_df8 ----

by_chapter_bigram$bigram <- 
  stringr::str_replace_all(by_chapter_bigram$bigram, "_|'s", "")
bigram_counts <- by_chapter_bigram %>%
  dplyr::count(title, bigram, sort = TRUE) %>%
  dplyr::ungroup()

# Some extra cleaning
by_chapter_bigram_sep <- 
  by_chapter_bigram %>%
  tidyr::separate(bigram, c("word1", "word2"), sep = " ") %>%
  dplyr::filter(!word1 %in% stop_words$word &
           !str_detect(word1, "[0-9]")) %>%
  dplyr::filter(!word2 %in% stop_words$word &
           !str_detect(word2, "[0-9]"))


bigram_counts <- by_chapter_bigram_sep %>%
  dplyr::count(word1, word2, sort = TRUE)

bigram_counts <- bigram_counts %>%
  tidyr::unite(bigram, word1, word2, sep = " ")

## ---- tidy_df10 ----

bigram_counts %>% 
  dplyr::group_by(title) %>%
  dplyr::top_n(10, n) %>%
  dplyr::ungroup() %>%
  dplyr::mutate(bigram = reorder(bigram, n)) %>%
  ggplot(aes(bigram, n, fill=title)) +
  ggplot2::geom_col(show.legend = FALSE) +
  ggplot2::facet_wrap(~title, scales = "free") +
  ggplot2::labs(y = "10 most frequent bigrams by book",
       x = NULL) +
  ggplot2::coord_flip()

# Code modified from Julia Silge & Robinson, 2017.