## For R 2.15.1 and later this also works. Note that calling loadModule() triggers
## a load action, so this does not have to be placed in .onLoad() or evalqOnLoad().
loadModule("trng", TRUE)

.onUnload <- function(libpath) {
  library.dynam.unload("rTRNG", libpath)
}
