# simple test

This is a simple test of an Rmd file to verify things work


```r
setHooks()
```



```r
knit_hooks$get()
```

```
## $source
## function (x, options) 
## str_c("\n\n```", tolower(options$engine), "\n", x, "```\n\n")
## <environment: 0x09174958>
## 
## $output
## function (x, options) 
## if (output_asis(x, options)) x else hook.t(x, options)
## <environment: 0x09174958>
## 
## $warning
## function (x, options) 
## {
##     if (strict) {
##         str_c("\n\n", indent_block(x), "\n")
##     }
##     else str_c("\n\n```\n", x, "```\n\n")
## }
## <environment: 0x09174958>
## 
## $message
## function (x, options) 
## {
##     if (strict) {
##         str_c("\n\n", indent_block(x), "\n")
##     }
##     else str_c("\n\n```\n", x, "```\n\n")
## }
## <environment: 0x09174958>
## 
## $error
## function (x, options) 
## {
##     if (strict) {
##         str_c("\n\n", indent_block(x), "\n")
##     }
##     else str_c("\n\n```\n", x, "```\n\n")
## }
## <environment: 0x09174958>
## 
## $plot
## function (x, options) 
## {
##     if (options$fig.show == "animate") 
##         return(hook_plot_html(x, options))
##     base = opts_knit$get("base.url") %n% ""
##     cap = .img.cap(options)
##     if (is.null(w <- options$out.width) & is.null(h <- options$out.height) & 
##         is.null(s <- options$out.extra)) {
##         return(sprintf("![%s](%s%s) ", cap, base, .upload.url(x)))
##     }
##     .img.tag(.upload.url(x), options$out.width, options$out.height, 
##         cap, options$out.extra)
## }
## <environment: namespace:knitr>
## 
## $inline
## function (x) 
## .inline.hook(format_sci(x, "html"))
## <environment: 0x09174958>
## 
## $chunk
## function (x, options) 
## {
##     x = gsub("[\n]{2,}(```|    )", "\n\n\\1", x)
##     x = gsub("[\n]+$", "", x)
##     x = gsub("^[\n]+", "\n", x)
##     if (is.null(s <- options$indent)) 
##         return(x)
##     line_prompt(x, prompt = s, continue = s)
## }
## <environment: 0x09174958>
## 
## $document
## function (x) 
## x
## <bytecode: 0x04ff70dc>
## <environment: namespace:base>
## 
## $post.options
## function (before, options, envir) 
## {
##     cat("test result", file = "hookOutput.txt")
## }
## <environment: 0x08599dbc>
## 
## $foo1
## function (before, options, envir) 
## {
##     if (before) {
##         "_I appear before a chunk!_\n\n"
##     }
##     else {
##         "\n\n_I am after a chunk..._"
##     }
## }
## <environment: 0x08599dbc>
```


_I appear before a chunk!_

```r
1 + 1
```

```
## [1] 2
```



_I am after a chunk..._

