## Put comments here that give an overall description of what your
## functions do 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix() )  {

        cache <- NULL
        cache_matrix <- NULL
        
        # get function
        get <- function() x
        
        #set last matrix
        set_last <- function(y) {
                cache_matrix <<-y
        }
        
        #get last matrix
        get_last <- function() cache_matrix
        
        # set function for 
        setcache <- function(y) {
                cache <<- y
        }
        
        # getter matrix inverse cache function
        getcache <- function() cache
        
        #list function names
        list (get = get, get_last = get_last, set_last = set_last
        , setcache = setcache, getcache=getcache)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        y <- x$get()
        invMatrix <- solve(y)
        
        x$setcache(invMatrix)
        x$set_last(y)
        invMatrix
         
                
}
