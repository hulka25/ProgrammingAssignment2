## these functions will cache the inverse of a matrix.

## this function creates a specail matrix object that can cache its inverse. I created a vector first initializing it with the NULL object.
## then set function with the y object as the parameter. 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function (y){
    x <<- y
    inv <<- NULL
  }
  get <- function() X
  setInverse <- function (solveMatrix) inv <<- solveMatrix
  getInverse <- function () inv
  list(set = set, get = get, setInverse = Setinverse, getInverse = getInverse)
}

## This function computes the inverse of the special matrix returned by makecachematrix above

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
