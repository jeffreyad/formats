#' Format a Date in SAS Date9 format
#'
#' @param date The input date
#' @param name the date format. Either "Date9" or "Date7"
#'
#' @return The input date formatted as a string
#' @export
#'
#' @examples
#' dt <- as.Date("1990-01-31")
#' format_date(dt)
format_date <- function(date, name){
  arg_match(name, c("Date7", "Date9"))
  if (name == "Date9") {
    formatted_date <- toupper(format(date, "%d%b%Y"))
  } else if (name == "Date7") {
    formatted_date <- toupper(format(date, "%d%b%y"))
  }
  return(formatted_date)

}
