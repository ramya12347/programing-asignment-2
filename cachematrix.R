## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse1 <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inverse1 <- solve(data)
  x$setInverse(inverse1)
  inverse1     
}
