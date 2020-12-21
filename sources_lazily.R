## header ###
## who:    m.2
## when:   Wed Sep 16 16:02:43 2020
## why:    Sources the script lazily only if not sourced.
############

sources_lazily <- function(file_name){
  
  file_name_value <- substitute(file_name)
  file_element_value <- .GlobalEnv$m.2_sourced[[file_name_value]]
  
  file_lines <- readLines(file_name)
  
  if(!identical(file_element_value, file_lines)){
    
    m.2_sourced_list <- list(file_lines)
    .GlobalEnv$m.2_sourced[file_name_value] <- m.2_sourced_list
    
    source(file_name)
  }
}