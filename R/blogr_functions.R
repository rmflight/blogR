#' Create the header of the page
#' 
#' This function takes the full set of blog options, and uses that to create the header
#' that will be displayed on the main index page and each blog post page
#' 
#' @param all_options The full set of options. Will generally be .all_options
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


#' Create the index page of recent blog posts
#' 
#' Takes all_options and creates the index page of recent posts. The number of posts, and many
#' other options should be set in the file _blog_options.R. This file will be sourced, and the
#' options used in subsequent creation of the main index and individual posts.
createMain <- function(all_options){
  
}


#' Create an individual post
#' 
#' Takes a supplied file \code{filename} and generates an html page based on a given template
#' 
#' @param all_options the options for the blog generally
#' @param filename the MD file to be processed to generate the individual post
#' @export
createPost <- function(filename, all_options){
	.post_options <- NA # set this to start
	
	tmpKnit <- knit(filename, "tmp.md")
  tmpHTML <- markdownToHTML(tmpKnit, fragment.only=T)
	.post_options$content <- tmpHTML
  
  knit("post_template.Rhtml")
}

addAuthor <- function(inAuthor){
  return(inAuthor)
}


#' Set knitr hooks
#' 
#' Set chunk hooks that will be used in subsequent code chunks. Because \code{\link{knitr}} 
#' requires custom hooks to be set for a document, this function should be called first
#' in a given MD document, and then the post settings defined in the next code chunk.
#'
#' @export
setHooks <- function(){
	knit_hooks$set(post.options = function(before, options, envir){
		if (!before){
			parentFrame <- sys.frame(0)
			if(exists(".post_options")){
				assign(".post_options", post_options, parentFrame)
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