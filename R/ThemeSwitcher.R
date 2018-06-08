#' ThemeSwitcher: R Studio addin for quick theme switching
#'
#' The ThemeSwitcher package provides an R Studio addin for quick switching between a light and a dark theme.
#' It provides two functions for programmatic theme switching, \code{light_theme()} and \code{dark_theme()}.
#' It also provides two function to set the respective theme, \code{set_light_theme()} and \code{set_dark_theme()}.
#'
#' @section Switching functions:
#' The two switching functions \code{light_theme()} and \code{dark_theme()} change the R Studio theme.
#' After package installation, they can be directly executed from the R Studio addins menu.
#' Light theme defaults to TextMate; dark theme defaults to Material.
#'
#' @section Theme setting function:
#' The two theme setting functions \code{set_light_theme()} and \code{set_dark_theme()} can be used to set user-specific light and dark theme.
#' Subsequent calls to the switching functions and the addin use these user-specific themes.
#'
#' @docType package
#' @name ThemeSwitcher
NULL
