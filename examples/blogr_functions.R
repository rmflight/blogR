# function to take a knitr RHTML document and create
require(knitr)
require(markdown)

knit_template <- function(input_Rmd, all_options){
  knit(input_Rmd)
}

createHeader <- function(all_options){
  head1 <- ""
  if (!(is.na(all_options["title"]))){
    head1 <- paste(head1, "<h1>", all_options["title"], ":</h1></br>", sep="", collapse="")
  }
  if (!(is.na(all_options["subtitle"]))){
    head1 <- paste(head1, "<h2>", all_options["subtitle"], "</h2>", sep="", collapse="")
  }
  return(head1)
}

createMain <- function(all_options){
  
}