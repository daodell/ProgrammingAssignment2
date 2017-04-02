## Put comments here that give an overall description of what your
## functions do 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix() )  {

        cache <- NULL
        
        # setter function
        set <- function(x) {
                cache <<- x
        }
        
        # getter function
        get <- function() x
        
        # getter matrix inverse cache function
        getcache <- function() cache
        #list
        list (set = set, get=get, getcache=getcache)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        y <- x$get()     
        result <- solve(y)
       
        
        x$set(result)
        result
         
                
}
