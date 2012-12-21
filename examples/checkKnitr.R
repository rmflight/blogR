source("../blog_options.R")
source("blogr_functions.R")

post_options <- NA

knit("test.Rmd", "tmp.md")

post_options


sessionInfo()