## This is the functions created for Week 3 Assignment 
## It is to Cache the inverse of a Matrix

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL     ## initialise an inverse property

        ## set the matrix
        set <- function (matrix) {
                mtx <<- matrix
                inv <<- NULL
        }

        ## get the matrix
        get <- function () {
                mtx 
        }

        ## set the inverse of the matrix
        setInverse <- function (inverse) {
                inv <<- inverse 
        }

        ## get the matrix
        getInverse <- function () {
                inv 
        }

        ## Return a list of the methods
        list(
                set = set, 
                get = get,
                setInverse = setInverse,
                getInverse = getInverse)

}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mtx <- x$getInverse()

        ## Return the inverse if its set
        if( !is.null(mtx) ) {
                message("getting cached data")
                return(mtx)
        }
        
        ## Get the matrix 
        data <- x$get()

        ## Calculate the inverse
        mtx <- solve(data, ...) 

        ## Set the inverse to the matrix
        x$setInverse(mtx)

        ## Return the matrix
        mtx
}
