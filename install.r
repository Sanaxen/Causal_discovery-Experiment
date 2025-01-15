curdir <- getwd()
print(curdir)

install_libpath <- paste(curdir, "/work/lib", sep="")
print(install_libpath)

.libPaths(c(install_libpath,.libPaths()))
print(.libPaths())

install.packages("ggplot2", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("gridExtra", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("RColorBrewer", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 

install.packages("Ckmeans.1d.dp", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("xgboost", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("Matrix", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("DALEX", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("DALEXtra", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("ingredients", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("mlr", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("SHAPforxgboost", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
install.packages("gridExtra", repo="http://cran.r-project.org", lib=install_libpath, type = "binary") 
