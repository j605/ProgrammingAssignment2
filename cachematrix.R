## makeCacheMatrix creates a special matrix object that can cache his inverse.
## cacheSolve retrieves the inverse of a matrix from cache if it has not
## changed or compute the inverse the store it if the inverse is not present
## in cache or the cache has become dirty.

## This function contains the associated list of associated getters and
## setters.

makeCacheMatrix <- function(x = matrix()) {
    inv.x <- matrix()

    set <- function(y) {
        x <<- y
        inv.x <<- matrix()
    }

    get <- function() x

    setinv <- function(inv) inv.x <<- inv

    getinv <- function() inv.x

    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
