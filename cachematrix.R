## This file contains two functions. 
#One function caches the matrix and inverse matrix.
#The other function calculates the inverse matrix. 

## This function caches values for the current matrix, inverse matrix
#and the previous matrix.

makeCacheMatrix <- function(x = matrix() )  {

        cache <- NULL
        cache_matrix <- NULL
        
        # get function - gets the x argument
        get <- function() x
        
        #set_last matrix - the last matrix used 
        #to calcuate the inverse matrix
        set_last <- function(y) {
                cache_matrix <<-y
        }
        
        #get last matrix
        get_last <- function() cache_matrix
        
        #setcache function - set inverse matrix cache
        setcache <- function(y) {
                cache <<- y
        }
        
        # getcache matrix - get inverse cache function
        getcache <- function() cache
        
        #list function names
        list (get = get, get_last = get_last, set_last = set_last
        , setcache = setcache, getcache=getcache)
}


## This function returns a matrix that is the inverse of 'x'.  If the inverse 
#matrix has already been calculated, then it retrieves the inverse matrix
#from cache. 

cacheSolve <- function(x, ...) {
       
        matrix <- x$get()
        last_matrix<- x$get_last()
        
        if(identical(matrix,last_matrix)) {
                print(" get inverese matrix from cache")
                invMatrix <- x$getcache()
        }
        else {
                print("calculate the inverse matrix")
                invMatrix <- solve(matrix)
                x$setcache(invMatrix)
                x$set_last(matrix)
                
        }
               
        invMatrix        
        
                
}
