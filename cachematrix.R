## The program caches the inverse of a matrix by 1) making a matrix
## able to cache its inverse and 2) calculating the inverse.


## This function creates a matrix able to cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
setmatrix <- function(y) 
{
	x <<- y
	m <<- NULL
}
getmatrix <- function()x
setinverse <- function(inverse) m<<- inverse
getinverse <- function()m
list (setmatrix=setmatrix, getmatrix=getmatrix, 
setinverse=setinverse, getinverse=getinverse)
}

## This function either calculates the inverse of the matrix or gets 
## the inverse from the cache, depending on if the inverse has been
## computed.

cacheSolve <- function(x, ...) {
m<-x$getinverse()
if (!is.null(m)){
 		message("loading data")
 		return(m)
 	}
 	data <- x$getmatrix()
 	m <- solve(data,...)
 	x$setinverse(m)
 	m
}
