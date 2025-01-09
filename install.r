curdir <- getwd()
print(curdir)

install_libpath <- paste(curdir, "/lib", sep="")
print(install_libpath)

.libPaths(c(install_libpath,.libPaths()))
print(.libPaths())

install.packages("ggplot2", repo="http://cran.r-project.org", lib=install_libpath) 
install.packages("gridExtra", repo="http://cran.r-project.org", lib=install_libpath) 
install.packages("RColorBrewer", repo="http://cran.r-project.org", lib=install_libpath) 

