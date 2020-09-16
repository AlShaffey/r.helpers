## header ##
## who:    m.2
## when:   Wed Sep 16 16:02:43 2020
## why:    Sources the script lazily only if not sourced.
############

sources_lazily <- function(file_name){
  if (is.null(.GlobalEnv$m.2_sourced)) {
    .GlobalEnv$m.2_sourced <- c(file_name)
  }else{
    sourced_file_name <-
      .GlobalEnv$m.2_sourced[.GlobalEnv$m.2_sourced == file_name]
    length_sourced_file <- length(sourced_file_name)
    if (length_sourced_file <= 0) {
      .GlobalEnv$m.2_sourced <- rbind(.GlobalEnv$m.2_sourced, file_name)
    }else{
      return()
    }
  }
  source(file_name)
}