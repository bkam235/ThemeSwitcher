#' Change dark theme for ThemeSwitcher addin
#'
#' @param theme A valid theme name as a string
#' @return Sets option for themeswitcher.dark.
#' @examples
#' \dontrun{
#' set_light_theme("monokai")
#' }

set_dark_theme <- function(theme){
  if(theme %in% names(rstudioapi::getThemes()) == FALSE){
    stop("Theme name not valid. Get list of valid themes with: names(rstudioapi::getThemes())")}
  options(themeswitcher.dark = theme)
}
