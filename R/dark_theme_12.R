#' Switch to dark theme (R Studio 1.2 or higher).
#'
#' @description
#' Dark theme defaults to Material.
#' Dark theme can be changed with \code{\link{set_dark_theme}}.
#' This function is executed by ThemeSwitcher addin "Dark Theme".
#' It throws an error if \code{getOption("themeswitcher.dark")} does not return a valid theme name.

dark_theme <- function(){
  if(getOption("themeswitcher.dark") %in% names(rstudioapi::getThemes()) == FALSE){
    stop("Theme name not valid. Get list of valid themes with: names(rstudioapi::getThemes())")}

  version <- unlist(rstudioapi::versionInfo()$version)
  if(version[1] >= 1 & version[2] >= 2){
    rstudioapi::applyTheme(getOption("themeswitcher.dark"))
  } else {
    .rs.writeUiPref("theme", getOption("themeswitcher.dark"))
  }

}
