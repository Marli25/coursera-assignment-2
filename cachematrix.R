## The makeCacheMatrix function will create a "matrix" object that caches the inverse of it.

    ## set the value of the matrix
    ## get the value of the matrix
    ## set the inverse of the matrix
    ## get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    z <- NULL
    set <- function(y) {
    x <<- b
    z <<- NULL
    }

        get <- function() x
        setinverse <- function(inverse) z <<- inverse
        getinverse <- function() z
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## The cacheSolve function create the inverse of the "matrix" in makeCacheMatrix. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    z <- x$getinverse()
    if(!is.null(z)) {
    message("reading cache...")
    return(z)
    }
        data <- x$get()
        z <- solve(data)
        x$setinverse(z)
        z
}
