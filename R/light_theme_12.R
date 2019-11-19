#' Switch to light theme.
#'
#' @description
#' Light theme defaults to TextMate.
#' Light theme can be changed with \code{\link{set_light_theme}}.
#' This function is executed by ThemeSwitcher addin "Light Theme".
#' It throws an error if \code{getOption("themeswitcher.light")} does not return a valid theme name.

light_theme <- function(){
  if(getOption("themeswitcher.light") %in% names(rstudioapi::getThemes()) == FALSE){
    stop("Theme name not valid. Get list of valid themes with: names(rstudioapi::getThemes())")}

  version <- unlist(rstudioapi::versionInfo()$version)
  if(version[1] >= 1 & version[2] >= 2){
    rstudioapi::applyTheme(getOption("themeswitcher.light"))
  } else {
    .rs.writeUiPref("theme", getOption("themeswitcher.light"))
  }
}
