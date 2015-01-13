## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  temp <- NULL
  set <- function(y) {
    x <<- y
    temp <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) temp <<- inverse
  getinverse <- function() temp
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  temp <- x$getinverse()
  if(!is.null(temp)) {
    message("getting cached data")
    return(temp)
  }
  data <- x$get()
  temp <- solve(data, ...)
  x$setinverse(temp)
  temp
}
