## Put comments here that give an overall description of what your
## functions do 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        # getter function
        get <- function() x
        
        # setter function
        set <- function(y) {
                x <<- y
        }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
