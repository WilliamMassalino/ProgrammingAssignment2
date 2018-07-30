## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        inverseX <- NULL
        set <- function(y){
        x<<- y
        inverseX <<-NULL
}
        get <- function()x
        setinverse <- function(inverse)inverseX <<-inverse
        getinverse <- functioin()inverseX
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inverseX <- x$getinverse()
        if(!is.null(inverseX)){
message("Getting cached data.")
                return(inverseX)
}
        data <- x$get()
        inverseX <- solve(data)
        x$setinverse(inverseX)
        inverseX

}
