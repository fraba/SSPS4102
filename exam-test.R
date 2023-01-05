library("exams")
options(device.ask.default = FALSE)

## define an exams (= list of exercises)
myexam <- c(
  "boxplots.Rmd",
  "tstat.Rmd",
  "ttest.Rmd",
  "regression.Rmd",
  "relfreq.Rmd"
)

## output directory
dir.create(mydir <- tempfile())

## generate .zip with Canvas test in temporary directory
exams2canvas("test.Rmd", n = 10, dir = "~/Downloads/")
dir(mydir)

exams2tcexam("lm.Rmd", n = 10, dir = "~/Downloads/", name = "lm")
