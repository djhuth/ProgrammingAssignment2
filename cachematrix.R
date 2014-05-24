## Assignment 2, week 3, R-programming: 
## ----------------------------------------------------------------------------
##
## 1. function makeCacheMatrix creates a matrix object
##
## 2. function cacheSolve retrieves from cache the inverse of the matrix
##    returned by makeCacheMatrix - if it exists
##    or else computes the inverse and stores it in cache


## creates a (square) matrix object that can cache its inverse
## cf. sample function makeVector and cachemean
## uses "superassignment"-operator <<- to store in cache
## returns a list containing functions to
## 
## 1. set the value of the matrix       
## 2. get the value of the matrix
## 3. compute the inverse of the matrix and store in cache
## 4. get the inverse - first time from function, next time from cache

makeCacheMatrix <- function(x = matrix()) {
  inv_m <- NULL
  # set: like in makeVector
  set <- function(y){
    x <<- y
    inv_m <<- NULL
  }
  
  get <- function() x
  # compute the inverse: 
  setinverse  <- function(inverse) inv_m <<- inverse
  # get function for inverse
  getinverse <- function() inv_m
  
  # return value: list with methods
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## creates and returns the inverse of above matrix
## it retrieves the inverse from cache if it's already computed

cacheSolve <- function(x, ...) {
  ## argument = (square) matrix x, 
  ## return   = inverse of x
  
  inv_x <- x$getinverse()  # see above function
  
  # inverse has already been computed? return cached value
  if (!is.null(inv_x)) {
    message("getting the cached value of inversed matrix")
    return(inv_x)
  } else  {         
    inv_x <- solve(x$get())   # ... otherwise compute inverse
    x$setinverse(inv_x)       # ... store it in cache
    return(inv_x)             # ... and return inverse to caller
  }                    
}
