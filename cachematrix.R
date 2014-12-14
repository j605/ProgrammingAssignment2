## makeCacheMatrix creates a special matrix object that can cache his inverse.
## cacheSolve retrieves the inverse of a matrix from cache if it has not
## changed or compute the inverse the store it if the inverse is not present
## in cache or the cache has become dirty.

## This function returns the associated list of associated getters and
## setters for a matrix.

makeCacheMatrix <- function(x = matrix()) {
    inv.x <- NULL

    set <- function(y) {
        x <<- y
        inv.x <<- NULL
    }

    get <- function() x

    setinv <- function(inv) inv.x <<- inv

    getinv <- function() inv.x

    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Return inverse of x.
## * Calculate it if it is absent in cache.
## * Retrieve from cache if available.

cacheSolve <- function(x, ...) {
    inv.x <- x$getinv()

    if(!is.null(inv.x)) {
        message("Getting cached matrix inverse")
        return(inv.x)
    }

    else {
        x$setinv(solve(x$get(), ...))
        return(x$getinv())
    }
}
