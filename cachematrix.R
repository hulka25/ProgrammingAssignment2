## these functions will cache the inverse of a matrix.

## this function creates a specail matrix object that can cache its inverse.

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
