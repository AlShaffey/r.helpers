## header ##
## who:    m.2
## when:   Tue Sep 22 17:01:14 2020
## why:    Creates auto disposable png device.
############

careful_png <- function(png, plotting)
{
  png
  tryCatch(plotting, finally = dev.off())
}
