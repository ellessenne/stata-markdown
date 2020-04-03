#' Check Stata Availability
#'
#' @param error Throw an error if Stata is not found on the system path. Defaults to `FALSE`.
#'
#' @return A boolean value, representing whether Stata was found on the system path.
#' @export
#'
#' @examples
#' stata_available()
stata_available <- function(error = FALSE) {
  path <- Sys.which(c("StataIC-64", "StataMP-64", "StataSE-64"))
  if (all(path == "")) {
    if (error) stop("Stata not found on the system path", call. = FALSE)
    found <- FALSE
  } else {
    found <- TRUE
  }
  found
}
