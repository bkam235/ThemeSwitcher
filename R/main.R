# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

.onLoad <- function(libname, pkgname) {
  op <- options()
  op.themeswitcher <- list(
    themeswitcher.light = "TextMate",
    themeswitcher.dark = "Material",
    themeswitcher.valid_themes = c(
      "Ambiance", "Chaos", "Chrome", "Clouds Midnight", "Clouds", "Cobalt",
      "Crimson Editor", "Dawn", "Dracula", "Dreamweaver", "Eclipse",
      "Idle Fingers", "Katzenmilch", "Kr Theme", "Material", "Merbivore Soft",
      "Merbivore", "Mono Industrial", "Monokai", "Pastel on Dark", "Solarized Dark",
      "Solarized Light", "TextMate", "Tomorrow Night Blue", "Tomorrow Night Bright",
      "Tomorrow Night 80s"
    )
  )
  toset <- !(names(op.themeswitcher) %in% names(op))
  if(any(toset)) options(op.themeswitcher[toset])
  invisible()
}

#' Switch to light theme.
#'
#' @description
#' Light theme defaults to TextMate.
#' Light theme can be changed with \code{\link{set_light_theme}}.
#' This function is executed by ThemeSwitcher addin "Light Theme".
#' It throws an error if \code{getOption("themeswitcher.light")} does not return a valid theme name.
#'
light_theme <- function() {
  if(getOption("themeswitcher.light") %in% getOption("themeswitcher.valid_themes") == FALSE){
    stop("Theme name not valid. Set it with: set_light_theme()")}
  .rs.writeUiPref("theme", getOption("themeswitcher.light"))
}

#' Switch to dark theme.
#'
#' @description
#' Dark theme defaults to Material.
#' Dark theme can be changed with \code{\link{set_dark_theme}}.
#' This function is executed by ThemeSwitcher addin "Dark Theme".
#' It throws an error if \code{getOption("themeswitcher.dark")} does not return a valid theme name.
#'
dark_theme <- function() {
  if(getOption("themeswitcher.dark") %in% getOption("themeswitcher.valid_themes") == FALSE){
    stop("Theme name not valid. Set it with: set_dark_theme()")}
  .rs.writeUiPref("theme", getOption("themeswitcher.dark"))
}

#' Change light theme for ThemeSwitcher addin
#'
#' @param theme A valid theme name as a string
#' @return Sets option for themeswitcher.light.
#' @examples
#' set_light_theme("Chrome")
set_light_theme <- function(theme = "TextMate"){
  if(theme %in% getOption("themeswitcher.valid_themes") == FALSE){
    stop("Theme name not valid. Get list of valid themes with: getOption(\"themeswitcher.valid_themes\")")}
  options(themeswitcher.light = theme)
}

#' Change dark theme for ThemeSwitcher addin
#'
#' @param theme A valid theme name as a string
#' @return Sets option for themeswitcher.dark.
#' @examples
#' set_light_theme("Monokai")
set_dark_theme <- function(theme = "Material"){
  if(theme %in% getOption("themeswitcher.valid_themes") == FALSE){
    stop("Theme name not valid. Get list of valid themes with: getOption(\"themeswitcher.valid_themes\")")}
  options(themeswitcher.dark = theme)
}
