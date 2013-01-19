\name{setHooks}
\alias{setHooks}
\title{Set knitr hooks}
\usage{
  setHooks()
}
\description{
  Set chunk hooks that will be used in subsequent code
  chunks. Because \code{\link{knitr}} requires custom hooks
  to be set for a document, this function should be called
  first in a given MD document, and then the post settings
  defined in the next code chunk.
}

