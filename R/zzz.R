.onAttach <- function(...) {
  needed <- core[!is_attached(core)]
  if (length(needed) == 0)
    return()

  crayon::num_colors(TRUE)
  r2academy_attach()

  if (!"package:conflicted" %in% search()) {
    x <- r2academy_conflicts()
    msg(r2academy_conflict_message(x), startup = TRUE)
  }

}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}