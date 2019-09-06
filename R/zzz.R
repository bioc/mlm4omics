.onLoad  <-  function(libname, pkgname) {
    modules  <-  paste0("stan_fit4", names(stanmodels), "_mod")
    for (m in modules) loadModule(m, what = TRUE)
}

.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.11")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}

