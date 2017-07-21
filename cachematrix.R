#This R script is created as part of R programming assignment.
#It gives function to create matrix with special set of subfunctions.
#It also helps to find and cache Inverse of matrix created using first function.

#Function, makeCacheMatrix creates a special "Matrix", which is really a list containing a function to
#
#1. set the value of the vector
#2. get the value of the vector
#3. set the value of the mean
#4. get the value of the mean
makeCacheMatrix <- function(x = matrix()) {
  invMat <- NULL
  set <- function(y) {
    x <<- y
    invMat <<- NULL
  }
  get <- function() x
  setInvMat <- function(paramMatrix) invMat <<- paramMatrix
  getInvMat <- function() invMat
  list(set = set, get = get,
       setInvMat = setInvMat,
       getInvMat = getInvMat)
}

#For future reference ONLY, This function is not used.
#It is supposed to compare equality of matrix, but some work need to be done for dim.
chkEqual <- function(x, y)
  is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

#Function cachesolve returns Invesre of Matrix supplied as argument.
#It first tries to retrive inverse from cache if available.
#If not, we calculate inverse matrix and store it in cache.

#This functions assumes that matrix supplied is always invertible.
cacheSolve <- function(x, ...) {
  invMat <- x$getInvMat()
  if(!is.null(invMat)){
    message("Getting Cached Inverse Matrix!")
    return (invMat)
  }
  message("No cache entry! creating one now...")
  temp <- x$get()
  #No error handling if matrix is not invertible.
  invMat <- matrix(solve(temp),nrow = nrow(temp), ncol = ncol(temp))
  x$setInvMat(invMat)
  invMat
}
