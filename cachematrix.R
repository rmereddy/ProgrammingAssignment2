## These two functions just follow the example function "makeVector",
## you can use "makeCache matrix" to build a "matrix object" which can
## carry its inversion.

## this function just like a  "construction function" in OOP. it takes a matrix 
makeCacheMatrix <- function(x = matrix()) {
mat_inv <- NULL
set <-function(y){
x <<- y
mat_inv <<- NULL
}
get <- function()x
set_inverse <- function(inverse) mat_inv <<- inverse
get_inverse <- function() mat_inv
list(set=set,get=get,
set_inverse=set_inverse,
get_inverse=get_inverse)

}


## This function takes a "matrix object" build by "make cache matrix".
## if the "matrix object" has cached inversion, it will simply return it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
mat_inv <-x$get_inverse()
if(!is.null(mat_inv){
message("getting cached data")
return (mat_inv)
}
data <- x$get()
mat_inv <- solve(data)
x$set_inverse(mat_inv)
mat_inv
}
