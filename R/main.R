.onLoad <- function(libname, pkgname) {
  op <- options()
  op.themeswitcher <- list(
    themeswitcher.light = "textmate (default)",
    themeswitcher.dark = "material"
  )
  toset <- !(names(op.themeswitcher) %in% names(op))
  if(any(toset)) options(op.themeswitcher[toset])
  invisible()
}


