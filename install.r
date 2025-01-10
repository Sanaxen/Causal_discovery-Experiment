curdir <- getwd()
print(curdir)

install_libpath <- paste(curdir, "/work/lib", sep="")
print(install_libpath)

.libPaths(c(install_libpath,.libPaths()))
print(.libPaths())

install.packages("ggplot2", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("gridExtra", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("RColorBrewer", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 

