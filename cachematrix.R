## Assignment 2, week 3, R-programming: 
## ----------------------------------------------------------------------------
##
## 1. function makeCacheMatrix creates a matrix object
##
## 2. function cacheSolve retrieves from cache the inverse of the matrix
##    returned by makeCacheMatrix - if it exists
##    or else computes the inverse and stores it in cache


## creates a matrix object that can cache its inverse
## cf. sample function makeVector
## uses "superassignment"-operator <<- 
## returns a list containing functions to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. compute the inverse of the matrix
## 4. get the inverse 

makeCacheMatrix <- function(x = matrix()) {
  
  setMatrix
  getMatrix
  setInverse
  getInverse
  
  matrix(...) # this returns the matrix


}


## creates and returns the inverse of above matrix
## if doesn't already exist in cache - if it does (and is unchanged),
## it retrieves the inverse from cache 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- ...
  if(!is.null(inv)) {
    message("getting inverse from cache")
    return(inv)
  }
  ...
  
  inv   # this finally returns the inverse 
}
