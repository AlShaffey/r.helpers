## header ##
## who:    m.2
## when:   Wed Sep 16 11:32:01 2020
## why:    Downloads the given URL to the given file, but in a folder called
##          data.
############

download_to_data <- function(url, destination_file){
  directory <- "./data/"
  dir.create(directory)
  destination_full_path = file.path(directory, destination_file)
  download.file(url, destination_full_path)
}
