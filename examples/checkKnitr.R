source("../blog_options.R")
source("blogr_functions.R")

knit_hooks$get()

knit("test.Rmd", "tmp.md")

knit_hooks$get()

sessionInfo()