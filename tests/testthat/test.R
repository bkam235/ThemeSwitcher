context("Valid theme names")
library(ThemeSwitcher)

test_that("Invalid theme names throw error", {
  expect_error(ThemeSwitcher::set_dark_theme("Monokau"), "Theme name not valid.")
  expect_error(ThemeSwitcher::set_dark_theme(""), "Theme name not valid.")
  expect_error(ThemeSwitcher::set_light_theme("TextMute"), "Theme name not valid.")
  expect_error(ThemeSwitcher::set_light_theme(""), "Theme name not valid.")
})
