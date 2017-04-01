## Put comments here that give an overall description of what your
## functions do 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        # setter function
        set <- function(y) {
                x <<- y
        }
        
        # getter function
        get <- function() x
        #list
        list (set = set, get=get)
        
       

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
