## Put comments here that give an overall description of what your
## functions do

## Makes the inverse from where we will calculate the inverse later

makeCacheMatrix <- function(x = matrix()) {
  inversa <- NULL
    set <- function(y) {
        x <<- y
        inversa <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) inversa <<- solve
    getinverse <- function() inversa
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}



## Calculates the inverse of the matrix defined using the function above
## Checks if the inverse has already been calculated. If the answer is yes, uses the cached information


cacheSolve <- function(x, ...) {
 inversa <- x$getinverse()
    if(!is.null(inversa)) {
        message("getting cached data")
        return(inversa)
    }
    data <- x$get()
    inversa <- solve(data, ...)
    x$setinverse(inversa)
    inversa
        ## Return a matrix that is the inverse of 'x'
}
