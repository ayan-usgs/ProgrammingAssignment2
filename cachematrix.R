## Cache and return the inverse of a matrix

## Return a list of three functions to: get a matrix, cache its inverse, and get its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  get_matrix <- function() {
    x
  }
  set_inverse <- function(matrix_inverse) {
    inverse <<- matrix_inverse
  }
  get_inverse <- function() {
    inverse
  }
  cache_functions <- list(get_matrix = get_matrix,
                          set_inverse = set_inverse,
                          get_inverse = get_inverse
  )
}


## Return the inverse of a matrix from the cache,
## if it is null, calculate the inverse, cache it, 
## and return the value

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$get_inverse()
  if(!is.null(inverse)) {
    return(inverse)
  }
  matrix <- x$get_matrix()
  matrix_inverse <- solve(matrix, ...)
  x$set_inverse(matrix_inverse)
  matrix_inverse
}
