
##estabilish a function of matrix

makeCacheMatrix <- function(matrix0 = matrix()) {
matrixinverted<-NULL
set<-function(y){
matrix0<<-y
matrixinverted<<-NULL
}

get<-function()matrix0
SetInverse<-function(invert) matrixinverted<<-invert
getInverse<- function()matrixinverted
list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}


## invert the matrix if it was never inverted before as previously examined


cacheSolve<-function(matrix0,...){

matrixinverted<-matrix0$getInverse()
if(!is.null(matrixinverted)){

message("getting cached inverted matrix")

return(matrixinverted)
}
invertmatrix<-matrix0$get()
matrixinverted<-solve(invertmatrix,...)
matrix0$setInv(invert)
matrixinverted

}
