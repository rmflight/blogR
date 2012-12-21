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

createPost <- function(all_options, filename){
  tmpKnit <- knit(filename, "tmp.md")
  tmpHTML <- markdownToHTML(tmpKnit)
  
  post_options <- NA
  
  knit("post_template.Rhtml")
}

setHooks <- function(){
	knit_hooks$set(post.options = function(before, options, envir){
		if (!before){
			parentFrame <- sys.parent(n=4)
			if(exists("post_options")){
				assign("post_options", post_options, parentFrame)
			}
			
		}
			
	})
	
	foo1 <- function(before, options, envir){
		if (before) {
			"_I appear before a chunk!_\n\n"
		} else {
			"\n\n_I am after a chunk..._"
		}
	}
	
	knit_hooks$set(foo1 = foo1)
}