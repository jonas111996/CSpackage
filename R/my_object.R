#' Constructor for a `my_object` S3 class
#'
#' This function creates an object of class `my_object` from a numeric vector.
#'
#' @param x A numeric vector.
#' @return An object of class \code{my_object}.
#' @export
new_my_object <- function(x) {
  stopifnot(is.numeric(x))
  structure(list(data = x), class = "my_object")
}

#' Print method for my_object
#'
#' @param x An object of class \code{my_object}.
#' @param ... Additional arguments (ignored).
#' @return Invisibly returns \code{x}.
#' @export
print.my_object <- function(x, ...) {
  cat("This is a my_object instance:\n")
  print(x$data)
  invisible(x)
}

#' Summary method for my_object
#'
#' @param object An object of class \code{my_object}.
#' @param ... Additional arguments (ignored).
#' @return A summary of the data inside the object.
#' @export
summary.my_object <- function(object, ...) {
  stats <- summary(object$data)
  class(stats) <- "summary.my_object"
  return(stats)
}

#' Plot method for my_object
#'
#' @param x An object of class \code{my_object}.
#' @param ... Additional graphical parameters passed to \code{plot}.
#' @return A plot of the numeric data.
#' @export
plot.my_object <- function(x, ...) {
  plot(x$data, main = "Plot of my_object", ylab = "Values", type = "o", ...)
}

#' Convert a my_object to a data frame
#'
#' @param x An object of class \code{my_object}.
#' @param ... Additional arguments (ignored).
#' @return A data frame with one column named \code{value}.
#' @export
as.data.frame.my_object <- function(x, ...) {
  data.frame(value = x$data)
}






