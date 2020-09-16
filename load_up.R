## header ##
## who:    m.2
## when:   Wed Sep 16 11:32:33 2020
## why:    Loads a package and installs it if it's not installed.
############

load_up <- function(package_name){
  substituted <- substitute(package_name)
  characterized <- as.character(substituted)
  
  installed_packages <- installed.packages() 
  installed_package_names <- rownames(installed_packages)
  is_installed <- characterized %in% installed_package_names
  
  if (!is_installed) {
    install.packages(characterized)
  }
  library(characterized, character.only = T)
}