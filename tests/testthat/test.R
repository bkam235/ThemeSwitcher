context("Valid theme names")
library(ThemeSwitcher)

test_that("Invalid theme names throw error", {
  expect_error(ThemeSwitcher::set_dark_theme("Monokau"))
  expect_error(ThemeSwitcher::set_dark_theme(""))
  expect_error(ThemeSwitcher::set_light_theme("TextMute"))
  expect_error(ThemeSwitcher::set_light_theme(""))
})
