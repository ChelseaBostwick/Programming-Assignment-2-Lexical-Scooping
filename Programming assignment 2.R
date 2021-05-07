## these functions below stores a matrix and caches its inverse. 

## the function below makes a matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set<- function(y){
    x<<- y
    i<<- NULL
  }
  get <- function() x
  setinverse<- funtion(inverse) i<<- inverse
  getinverse <- function() i
  list(set =set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## this function computes inverse of the matrix 

cacheSolve <- function(x, ...) {
  i<- x$getinverse()
  if (!is.null(i)){
    message("retrieving cached")
    return(i)
  }
  data <- x$get()
  i<- solve(data, ...)
  x$setinverse(i)
  i
}